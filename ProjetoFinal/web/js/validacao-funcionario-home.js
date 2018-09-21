$("#validacao-form-func-home").validate({
    errorClass: "text-danger border-danger",
    errorElementClass: "text-danger border-danger",
    validClass: "text-success border-success",
    validElementClass: "text-success border-success",
    rules:{
        login:{
            required: true,
            
        }
        
    },
    messages{
        
    }
});