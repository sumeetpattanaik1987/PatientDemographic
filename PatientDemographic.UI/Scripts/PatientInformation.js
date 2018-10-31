
//var phoneTypeEnum =
//    {
//        Home = 0,
//        Work = 1,
//        Mobile = 2
//    };

/* function  savePatientInformation() for Insert patient information  */
function savePatientInformation(forename, surname, dateOfBirth,gender,home,work,mobile) {
    var patientDetailsModel = {
        "foreName": "",
        "surname": "",
        "dateOfBirth": "",
        "gender": 0,
        "telephones": []
    };

    var telephoneHome = {
        "phoneType": 0,
        "phoneNumber": home
    };
    var telephoneWork = {
        "phoneType": 1,
        "phoneNumber": work
    };
    var telephoneMobile = {
        "phoneType": 2,
        "phoneNumber": mobile
    };

    var telePhones = [];
    telePhones.push(telephoneHome);
    telePhones.push(telephoneWork);
    telePhones.push(telephoneMobile);
    
    patientDetailsModel.foreName = forename;
    patientDetailsModel.surname = surname;
    patientDetailsModel.dateOfBirth = dateOfBirth;
    patientDetailsModel.gender = gender;
    patientDetailsModel.telephones = telePhones;
    
      
    $.ajax({
        url: 'http://localhost:52977/api/Patient',
        type: 'POST',
        data:'{patientInformation:'+ JSON.stringify(patientDetailsModel)+'}',
        
        datatype: 'json',
        ContentType: 'application/json; charset=utf-8',
        success: function (data) {
            //alert('Saved Successfully');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert('An error occurred... ');
            $('#result').html('<p>status code: ' + jqXHR.status + '</p><p>errorThrown: ' + errorThrown + '</p><p>jqXHR.responseText:</p><div>' + jqXHR.responseText + '</div>');
            console.log('jqXHR:');
            console.log(jqXHR);
            console.log('textStatus:');
            console.log(textStatus);
            console.log('errorThrown:');
            console.log(errorThrown);
        }

    });
}