// Checking for empty string in task input field
document.querySelector('#add-task').onclick=
function checkString(){
    if (document.querySelector('#task-input').value.length==0) {
        alert("Please type in a task!");
    } else {
        //action to execute if the textbox isn't empty
    }
}

// Strike out task when checkbox is clicked
// function strikeThrough(checkbox) {
//     const row = checkbox.closest(tr);
//     if (checkbox.checked) {
//         row.style.textDecoration = "line-through";
//     } else {
//         row.style.textDecoration = "none";
//     }
// }
