/*function $(selector, text){
    if(text){
        document.querySelector(selector).innerHTML += `${text}<br>`;
    }
    return document.querySelector(selector);
}	
$('#add').addEventListener('click',(event)=>{
    let trElement = document.createElement('tr');
    $('tbody').appendChild(trElement);
    
    let inpList = document.querySelectorAll('#wrap_inp input');
    
    for(let i = 0; i < 5; i++){
        let tdElement = document.createElement('td');

        if(i < 4){
            tdElement.innerHTML += inpList[i].value;
        }else{
            tdElement.innerHTML += '삭제';
            tdElement.addEventListener('click',(event) => {
                tdElement.parentElement.remove();
            });
            
            tdElement.addEventListener('mouseenter',(event) => {
                tdElement.parentElement.style.backgroundColor = 'red';
                tdElement.parentElement.style.color = 'white';
            })
            
            tdElement.addEventListener('mouseleave',(event) => {
                tdElement.parentElement.style.backgroundColor = 'white';
                tdElement.parentElement.style.color = 'black';
            })
        }
        
        trElement.appendChild(tdElement);
    }
})

$('#deleteAll').addEventListener('click',(e)=>{
    $('tbody').innerHTML = '';
})

*/