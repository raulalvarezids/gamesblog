
document.addEventListener("DOMContentLoaded", function() {    

    document.querySelector('.hamburger').addEventListener('click', () => {
        const menu = document.querySelector('.menu');
        const divhhidden = document.querySelector('.hiddeall');
        const navmain = document.querySelector('.ulnav');

                
        if(menu.classList.contains('hidden')){
            navmain.classList.add('flex', 'flex-col', 'w-full', 'left-0',  'items-center', 'gap-y-5')            
            menu.classList.remove('hidden')
            divhhidden.classList.remove('hidden')
            

        }else{
            menu.classList.add('hidden') 
            divhhidden.classList.add('hidden') 
            navmain.classList.remove('flex', 'flex-col', 'w-full', 'left-0',  'items-center', 'gap-y-5')
        }
        
    });


});


