from accounts.models import Visitor


class VisitorMiddleware:

    TRACK_URLS = [
        '/',
        '/sridixitha/contact/',
        '/categories/listing/',
        '/job/listing/',
        '/apply/job/',
    ]

    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):

        ip = self.get_client_ip(request)

      
        if request.user.is_authenticated:

            Visitor.objects.filter(
                ip_address=ip
            ).delete()

            return self.get_response(request)

        path = request.path

        if path in self.TRACK_URLS:

            Visitor.objects.get_or_create(
                ip_address=ip,
                defaults={
                    'page_url': path
                }
            )

        return self.get_response(request)

    def get_client_ip(self, request):

        x_forwarded_for = request.META.get(
            'HTTP_X_FORWARDED_FOR'
        )

        if x_forwarded_for:
            return x_forwarded_for.split(',')[0]

        return request.META.get(
            'REMOTE_ADDR'
        )