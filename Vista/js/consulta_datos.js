$(document).ready(function(){
    $("#consulta").click(function(){
        $.ajax({
            url:"http://localhost/prueba/Controlador/MostrarDatos.php",
            type:"GET",
            dataType:"text",
            contentType:"application/text",
            success:function(datos) {
               //console.log(datos);
                
                $.each($.parseJSON(datos) , function(i, elemento){
                    //console.log(elemento.id);
                    $("#tbl").append("<tr><td>"+elemento.id+"</td><td>"+elemento.user_name+"</td><td>"+elemento.first_name+"</td><td>"+elemento.last_name+"</td>");
                })
            },
            error: function (err) {
                console.log(err);   
                alert("no funciona");
            }
        });

        
    })
})