package PosicionBocaArribaMO
  package RecordsMO
    partial record ParametrosParcialesMO
    parameter Real Wb;
    parameter Real Phi;
    parameter Real Psi;
    parameter Real L;
    end ParametrosParcialesMO;


    record ValorParametroMO
    
    extends ParametrosParcialesMO(Wb = 880, Phi = 30, Psi = 12,L= 0.1);
    end ValorParametroMO;

  end RecordsMO;

  package EcuacionesMO
    model EcuacionesMO
    Real Rx;
    Real M;
    Real Ry;
    Real R;
    Real Angulo;
  RecordsMO.ValorParametroMO r annotation(
        Placement(visible = true, transformation(origin = {-66, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
    Rx-M*cos(r.Phi-r.Psi)=0;
    Ry-M*sin(r.Phi-r.Psi)-0.4*r.Wb-0.2*r.Wb=0;
    M=2.5*r.Wb;
    R=sqrt(Rx^2+Ry^2);
    Angulo=atan(Ry/Rx)*(180/3.1416);
    end EcuacionesMO;


  end EcuacionesMO;
end PosicionBocaArribaMO;
