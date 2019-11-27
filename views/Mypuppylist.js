function createParagraph() {
  let para = document.createElement('p');
  para.textContent = 'You clicked the button!';
  document.body.appendChild(para);
}

const buttons = document.querySelectorAll('button');

for(let i = 0; i < buttons.length ; i++) {
  buttons[i].addEventListener('click', createParagraph);
}
window.addEventListener("load", function() {
			            
			            document.querySelector("#button").addEventListener("click", function() {
			                document.forms[0].txtAdoptPuppy.value = calculateBill('puppylist');
			            });
			            document.querySelector("#button").addEventListener("click", function() {
			                highlightAvailable('puppylist', this.checked);
			            });
                    });
