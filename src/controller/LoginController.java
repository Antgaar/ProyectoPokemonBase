package controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;

public class LoginController {
	
	public Stage stage;

    @FXML
    private Button btnAceptar;

    @FXML
    private Button btnCancelar;

    @FXML
    private Button btnRegistrar;

    @FXML
    private ImageView imgFondo;

    @FXML
    private ImageView imgLogo;

    @FXML
    private Label lblError;

    @FXML
    private Label lblPassword;

    @FXML
    private Label lblUsuario;

    @FXML
    private PasswordField txtPassword;

    @FXML
    private TextField txtUsuario;

    @FXML
    void comprobarLoguin(ActionEvent event) {

    }

    @FXML
    void registrarUsuario(ActionEvent event) {

    }

    @FXML
    void salir(ActionEvent event) {

    }
    
    public void setStage(Stage primaryStage) {
    	stage = primaryStage;
    }

}
