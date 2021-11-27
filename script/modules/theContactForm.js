// could wrap all of this in a class or an object and expand on the API to include all of the front-end API interactions (GET, PUT, POST for CMS etc)

// SendMail would be just one member / property in that object

async function SendMail(targetForm) {
    // mail stuff goes here
    let formData = new FormData(targetForm);

    // TODO: examine the method and incrementally build out the fetch call. currently it assumes POST

    let result = await fetch(`${targetForm.getAttribute("action")}`, {
        method: targetForm.method,
        // TODO: a GET request doesn't use body, so this member should be conditional
        body: formData,
    }).then(response => {
        if (response.status !== 200) {
            throw new Error(`Mail submission failed: ${response.status}`);

            // could examine status code here and return it as part of an error object to the .catch handler in the SendMail then-able chain in main.js
        }

        return response;
    })

    let mailStatus = await result.json();

    return mailStatus;
}

export { SendMail };

import { SendMail } from "./components/mailer.js";

(() => {
    let mailSubmit = document.querySelector('.submit-wrapper');

    function processMailFailure(result) {
        // show a failure message in the UI
        console.table(result); // table shows us an object in table form
        alert(result.message);

        // show some UI here to let the user know the mail attempt was successful
    }

    function processMailSuccess(result) {
        // show a success message in the UI
        console.table(result); // table shows us an object in table form
        alert(result.message);

        // show some UI here to let the user know the mail attempt was successful
    }

    function processMail(event) {
        // block the default submit behaviour
        event.preventDefault();

        // use the SendMail component to try to process mail
        SendMail(this.parentNode)
            .then(data => processMailSuccess(data))
            .catch(err => processMailFailure(err));

            // the error handler in the catch block could actually be a generic catch-and-display function that handles EVERY error you might encounter during runtime. Might be a better strategy to pass in a flag or just a message and have the function display it in the UI
    }

    mailSubmit.addEventListener("click", processMail);
})();