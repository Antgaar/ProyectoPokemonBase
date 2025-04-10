package controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;
import model.Entrenador;

public class MenuController {
	
	private Entrenador entrenador;
	private Stage stage;
	private LoginController loginController;

    @FXML
    private Button btnCaptura;

    @FXML
    private Button btnCentroPokemon;

    @FXML
    private Button btnCombate;

    @FXML
    private Button btnCrianza;

    @FXML
    private Button btnEntrenamiento;

    @FXML
    private Button btnEquipo;

    @FXML
    private Button btnSalir;

    @FXML
    private ImageView imgFondo;

    @FXML
    private ImageView imgLogo;

    @FXML
    private Label lblJugador;

    @FXML
    private Label lblJugadores;

    @FXML
    private Label lblPokedollares;

    @FXML
    private Label lblTiPokedollares;

	public void init(Entrenador ent, Stage stage, LoginController loginController) {
		this.loginController = loginController;
		this.stage = stage;
		this.entrenador = ent;
		
		lblJugador.setText(entrenador.getUsuario());
		lblPokedollares.setText(Integer.toString(entrenador.getPokedolares()));
		
		
	}
	
	

    @FXML
    public void salir(ActionEvent event) {
    	loginController.show();
    	this.stage.close();
    }

}
