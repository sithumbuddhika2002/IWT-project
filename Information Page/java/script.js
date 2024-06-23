// Wait for the DOM to be fully loaded
document.addEventListener("DOMContentLoaded", function () {
    // Select all elements with the class "vaccination-button"
    const buttons = document.querySelectorAll(".vaccination-button");

    // Select the element with the ID "vaccination-image"
    const image = document.getElementById("vaccination-image");

    // Select the first element with the class "vaccination-text"
    const text = document.querySelector(".vaccination-text");

    // Object containing information about various types of vaccinations
    const vaccinationInfo = {
        "COVID-19 Vaccination": {
            imageSrc: "images/covid.jpg",
            text: `
                As of my last update, several COVID-19 vaccines were authorized for emergency use in various countries. Some of the well-known vaccines included Pfizer-BioNTech, Moderna, Johnson & Johnson (Janssen), AstraZeneca, Sinopharm, Sinovac, and others.
                Vaccination efforts were underway worldwide to combat the COVID-19 pandemic. Vaccination eligibility, availability, and distribution were managed by national and local health authorities.`
        },
        "Routine Vaccinations": {
            imageSrc: "images/routine.jpg",
            text: `
                Routine vaccinations are essential to prevent various diseases, especially in children and infants. Common vaccines include those for measles, mumps, rubella (MMR), diphtheria, tetanus, pertussis (DTaP), polio, hepatitis B, and Haemophilus influenzae type b (Hib), among others.
                Vaccination schedules and requirements can vary by country and region, so it's essential to consult with a healthcare provider or refer to local health guidelines for specific details.`
        },
        "Influenza (Flu) Vaccination": {
            imageSrc: "images/flu.jpg",
            text: `
            The annual influenza vaccine provides targeted protection by addressing the specific strains expected for the season, prompting an immune response without causing illness, and contributing to community health by minimizing the overall spread of the flu.`
        },
        "Travel Vaccinations": {
            imageSrc: "images/travel.png",
            text: `
                When traveling to certain regions, it may be recommended or required to receive specific vaccinations to protect against diseases prevalent in those areas. Common examples include yellow fever, typhoid, and hepatitis A.`
        },
        "Childhood Vaccination Schedules": {
            imageSrc: "images/childhood.png",
            text: `
                Many countries have established childhood vaccination schedules to ensure that children receive vaccines at recommended ages. These schedules may include a series of shots over several years to provide long-lasting immunity.`
        }
    };

    // Add click event listeners to each button
    buttons.forEach(button => {
        button.addEventListener("click", () => {
            // Get the value of the "data-info" attribute from the clicked button
            const info = button.getAttribute("data-info");

            // Retrieve the corresponding object from the vaccinationInfo object
            const data = vaccinationInfo[info];

            // Update the image source and display the image
            image.src = data.imageSrc;
            image.style.display = "block";

            // Update the text content
            text.innerHTML = data.text;
        });
    });
});
