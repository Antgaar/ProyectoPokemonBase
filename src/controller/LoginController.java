package controller;

import java.io.File;
import java.io.IOException;

import javax.swing.JOptionPane;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.stage.Stage;
import model.Entrenador;

public class LoginController {
	Entrenador entrenador = new Entrenador("Antonio", "123456", 6000);
	public Stage stage;

	@FXML
	private ImageView btnRegistrar;

	@FXML
	private ImageView caratulaBtn;

	@FXML
	private ImageView caratulaPass;

	@FXML
	private ImageView caratulaUser;

	@FXML
	private ImageView eigthTitleLeter;

	@FXML
	private ImageView elevenTitleLeter;

	@FXML
	private ImageView fifteenTitleLeter;

	@FXML
	private ImageView fiveTitleLeter;

	@FXML
	private ImageView forthteenTitleLeter;

	@FXML
	private ImageView fourTitleLeter;

	@FXML
	private ImageView imgFondo;

	@FXML
	private ImageView nineTitleLeter;

	@FXML
	private ImageView oneTitleLeter;

	@FXML
	private ImageView sevenTitleLeter;

	@FXML
	private ImageView sixthTitleLeter;

	@FXML
	private ImageView tenTitleLeter;

	@FXML
	private ImageView thirteenTitleLeter;

	@FXML
	private ImageView threeTitleLeter;

	@FXML
	private ImageView twelveTitleLeter;

	@FXML
	private ImageView twoTitleLeter;

	@FXML
	private PasswordField txtPassword;

	@FXML
	private TextField txtUser;

	@FXML
	void logIn(MouseEvent event) { // Cambiado de login a logIn para coincidir con FXML
		comprobarLoguin();
	}

	@FXML
	void comprobarLoguin() {
		if (txtUser.getText().isEmpty()) {
			JOptionPane.showMessageDialog(null, "Error: Escribe nombre de usuario");
		} else if (txtPassword.getText().isEmpty()) {
			JOptionPane.showMessageDialog(null, "Error: Escribe contraseña");
		} else {
			String usuario = txtUser.getText();
			String pass = txtPassword.getText();

			if (entrenador.getUsuario().equals(usuario)) {
				if (entrenador.getPass().equals(pass)) {
					JOptionPane.showMessageDialog(null, "Bienvenido");
					abrirPantallaMenu(entrenador);
				} else {
					JOptionPane.showMessageDialog(null, "Error: Contraseña incorrecta");
				}
			} else {
				JOptionPane.showMessageDialog(null, "Error: Usuario no existe");
			}
		}
	}

	@FXML
	void signIn(MouseEvent event) {
		// Implementación básica para registro
		JOptionPane.showMessageDialog(null, "Funcionalidad de registro no implementada aún");
	}

	@FXML
	void salir(MouseEvent event) {
		// Cierra la aplicación
		System.exit(0);
	}

	public void setStage(Stage primaryStage) {
		stage = primaryStage;
	}

	private void abrirPantallaMenu(Entrenador ent) {
		try {
			FXMLLoader loader = new FXMLLoader(getClass().getResource("../view/menu.fxml"));
			Parent root = loader.load();

			MenuController menuController = loader.getController();
			Scene scene = new Scene(root);

			this.stage.setTitle("Menú principal");
			this.stage.setScene(scene);
			menuController.init(ent, this.stage, this);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void show() {
		stage.show();
		txtUser.setText("");
		txtPassword.setText("");
	}
}
