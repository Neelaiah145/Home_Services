
const slides = document.querySelectorAll('.jd-slide-item');
const bgs = document.querySelectorAll('.jd-bg');

const dots = document.querySelectorAll('.jd-dot');

let cur = 0;

function showSlide(index){

    slides[cur].classList.remove('active');
    bgs[cur].classList.remove('active');

    if(dots[cur]){
        dots[cur].classList.remove('active');
    }

    cur = (index + slides.length) % slides.length;

    slides[cur].classList.add('active');
    bgs[cur].classList.add('active');

    if(dots[cur]){
        dots[cur].classList.add('active');
    }
}

document.getElementById('heroPrev').onclick = ()=>{
    showSlide(cur - 1);
};

document.getElementById('heroNext').onclick = ()=>{
    showSlide(cur + 1);
};

setInterval(()=>{
    showSlide(cur + 1);
},5000);



