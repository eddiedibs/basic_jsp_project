<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String value1Str = request.getParameter("value1");
    String value2Str = request.getParameter("value2");
    String value3Str = request.getParameter("value3");
    String value4Str = request.getParameter("value4");

    double[] values = new double[4];
    values[0] = value1Str != null && !value1Str.isEmpty() ? Double.parseDouble(value1Str) : 0;
    values[1] = value2Str != null && !value2Str.isEmpty() ? Double.parseDouble(value2Str) : 0;
    values[2] = value3Str != null && !value3Str.isEmpty() ? Double.parseDouble(value3Str) : 0;
    values[3] = value4Str != null && !value4Str.isEmpty() ? Double.parseDouble(value4Str) : 0;

    String shapeType = "";
    String result = "";

    if (values[1] == 0 && values[2] == 0 && values[3] == 0) {
        shapeType = "Círculo";
        double radio = values[0];
        double diametro = 2 * radio;
        double circunferencia = 2 * Math.PI * radio;
        double area = Math.PI * Math.pow(radio, 2);
        result = String.format("Radio: %.2f, Diámetro: %.2f, Circunferencia: %.2f, Área: %.2f", 
                                radio, diametro, circunferencia, area);
    } else if (values[2] == 0 && values[3] == 0) {
        if (values[0] == values[1]) {
            shapeType = "Cuadrado";
            double lado = values[0];
            double perimetro = 4 * lado;
            double area = Math.pow(lado, 2);
            result = String.format("Lado: %.2f, Perímetro: %.2f, Área: %.2f", 
                                    lado, perimetro, area);
        } else {
            shapeType = "Rectángulo";
            double largo = values[0];
            double ancho = values[1];
            double perimetro = 2 * (largo + ancho);
            double area = largo * ancho;
            result = String.format("Largo: %.2f, Ancho: %.2f, Perímetro: %.2f, Área: %.2f", 
                                    largo, ancho, perimetro, area);
        }
    } else if (values[3] == 0) {
        shapeType = "Triángulo";
        double lado1 = values[0];
        double lado2 = values[1];
        double lado3 = values[2];
        String tipoTriangulo;
        if (lado1 == lado2 && lado2 == lado3) {
            tipoTriangulo = "Equilátero";
        } else if (lado1 == lado2 || lado2 == lado3 || lado1 == lado3) {
            tipoTriangulo = "Isósceles";
        } else {
            tipoTriangulo = "Escaleno";
        }
        double s = (lado1 + lado2 + lado3) / 2;
        double area = Math.sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
        result = String.format("Lado 1: %.2f, Lado 2: %.2f, Lado 3: %.2f, Tipo: %s, Perímetro: %.2f, Área: %.2f", 
                                lado1, lado2, lado3, tipoTriangulo, (lado1 + lado2 + lado3), area);
    } else {
        shapeType = "Cuadrado";
        double lado = values[0];
        double perimetro = 4 * lado;
        double area = Math.pow(lado, 2);
        result = String.format("Lado: %.2f, Perímetro: %.2f, Área: %.2f", 
                                lado, perimetro, area);
    }

    request.setAttribute("shapeType", shapeType);
    request.setAttribute("result", result);
    request.getRequestDispatcher("result.jsp").forward(request, response);
%>
