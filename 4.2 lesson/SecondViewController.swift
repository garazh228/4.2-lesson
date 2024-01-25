//
//  SecondViewController.swift
//  4.2 lesson
//
//  Created by adyl CEO on 25/01/2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    private lazy var scrolledMainView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 35
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var labelFullName: UILabel = {
        let label = UILabel()
        label.text = "Full Name"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var textFieldName: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter your name"
        tf.borderStyle = .none
        tf.layer.borderColor = UIColor.red.cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLineView = UIView()
        bottomLineView.backgroundColor = UIColor.lightGray
        bottomLineView.translatesAutoresizingMaskIntoConstraints = false
        
        tf.addSubview(bottomLineView)
        bottomLineView.leadingAnchor.constraint(equalTo: tf.leadingAnchor).isActive = true
        bottomLineView.trailingAnchor.constraint(equalTo: tf.trailingAnchor).isActive = true
        bottomLineView.bottomAnchor.constraint(equalTo: tf.bottomAnchor).isActive = true
        bottomLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        return tf
    }()
    
    
    private lazy var labelNumber: UILabel = {
        let label = UILabel()
        label.text = "Mobile Number"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var textFieldNumber: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter your mobile number"
        tf.borderStyle = .none
        tf.layer.borderColor = UIColor.red.cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLineView = UIView()
        bottomLineView.backgroundColor = UIColor.lightGray
        bottomLineView.translatesAutoresizingMaskIntoConstraints = false
        
        tf.addSubview(bottomLineView)
        bottomLineView.leadingAnchor.constraint(equalTo: tf.leadingAnchor).isActive = true
        bottomLineView.trailingAnchor.constraint(equalTo: tf.trailingAnchor).isActive = true
        bottomLineView.bottomAnchor.constraint(equalTo: tf.bottomAnchor).isActive = true
        bottomLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return tf
    }()
    
    
    private lazy var labelEmail: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var textFieldEmail: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter your Email"
        tf.borderStyle = .none
        tf.layer.borderColor = UIColor.red.cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLineView = UIView()
        bottomLineView.backgroundColor = UIColor.lightGray
        bottomLineView.translatesAutoresizingMaskIntoConstraints = false
        
        tf.addSubview(bottomLineView)
        bottomLineView.leadingAnchor.constraint(equalTo: tf.leadingAnchor).isActive = true
        bottomLineView.trailingAnchor.constraint(equalTo: tf.trailingAnchor).isActive = true
        bottomLineView.bottomAnchor.constraint(equalTo: tf.bottomAnchor).isActive = true
        bottomLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return tf
    }()
    
    
    private lazy var labelUserName: UILabel = {
        let label = UILabel()
        label.text = "User Name "
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var textFieldUserName: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter your user name"
        tf.borderStyle = .none
        tf.layer.borderColor = UIColor.red.cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLineView = UIView()
        bottomLineView.backgroundColor = UIColor.lightGray
        bottomLineView.translatesAutoresizingMaskIntoConstraints = false
        
        tf.addSubview(bottomLineView)
        bottomLineView.leadingAnchor.constraint(equalTo: tf.leadingAnchor).isActive = true
        bottomLineView.trailingAnchor.constraint(equalTo: tf.trailingAnchor).isActive = true
        bottomLineView.bottomAnchor.constraint(equalTo: tf.bottomAnchor).isActive = true
        bottomLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return tf
    }()
    
    
    private lazy var labelPassword: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var textFieldPassword: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter your password"
        tf.borderStyle = .none
        tf.layer.borderColor = UIColor.red.cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLineView = UIView()
        bottomLineView.backgroundColor = UIColor.lightGray
        bottomLineView.translatesAutoresizingMaskIntoConstraints = false
        
        tf.addSubview(bottomLineView)
        bottomLineView.leadingAnchor.constraint(equalTo: tf.leadingAnchor).isActive = true
        bottomLineView.trailingAnchor.constraint(equalTo: tf.trailingAnchor).isActive = true
        bottomLineView.bottomAnchor.constraint(equalTo: tf.bottomAnchor).isActive = true
        bottomLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return tf
    }()
    
    
    private lazy var labelConfirmPassword: UILabel = {
        let label = UILabel()
        label.text = "Confirm Password"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var textFieldConfirmPassword: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter your password"
        tf.borderStyle = .none
        tf.layer.borderColor = UIColor.red.cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLineView = UIView()
        bottomLineView.backgroundColor = UIColor.lightGray
        bottomLineView.translatesAutoresizingMaskIntoConstraints = false
        
        tf.addSubview(bottomLineView)
        bottomLineView.leadingAnchor.constraint(equalTo: tf.leadingAnchor).isActive = true
        bottomLineView.trailingAnchor.constraint(equalTo: tf.trailingAnchor).isActive = true
        bottomLineView.bottomAnchor.constraint(equalTo: tf.bottomAnchor).isActive = true
        bottomLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return tf
    }()
    
    
    private var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.addTarget(self, action: #selector(showFifthPage), for: .touchUpInside)
        let customColor = UIColor(red: 40/255, green: 85/255, blue: 174/255, alpha: 1.0)
        button.backgroundColor = customColor
        button.tintColor = .white
        button.layer.cornerRadius = 16
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private lazy var signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.addTarget(self, action: #selector(showFirstPage), for: .touchUpInside)
        button.tintColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GradientSET.setupGradientBackground(for: view)
        
        
        //картинка
        let imageView = MainImageSettings.setupMainImage()
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 350),
            imageView.heightAnchor.constraint(equalToConstant: 256),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 70)
        ])
        
        
        setupScrolledMainView()
        setupLabelFullName()
        setupTextFieldName()
        setupLabelNumber()
        setupTextFieldNumber()
        setupLabelEmail()
        setuptextFieldEmail()
        setupLabelUserName()
        setupTextFieldUserName()
        setupLablePassword()
        setupTextFieldPassword()
        setupLabelConfirmPassword()
        setupTextFieldConfirmPassword()
        setupSignUpButton()
    }
    
    private func setupScrolledMainView() {
        view.addSubview(scrolledMainView)
        
        NSLayoutConstraint.activate([
            scrolledMainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 220),
            scrolledMainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrolledMainView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrolledMainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
    
    private func setupLabelFullName() {
        scrolledMainView.addSubview(labelFullName)
        
        NSLayoutConstraint.activate([
            labelFullName.topAnchor.constraint(equalTo: scrolledMainView.topAnchor, constant: 40),
            labelFullName.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22)
        ])
    }
    
    private func setupTextFieldName() {
        scrolledMainView.addSubview(textFieldName)
        
        NSLayoutConstraint.activate([
            textFieldName.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22),
            textFieldName.trailingAnchor.constraint(equalTo: scrolledMainView.trailingAnchor, constant: -22),
            textFieldName.heightAnchor.constraint(equalToConstant: 44),
            textFieldName.topAnchor.constraint(equalTo: labelFullName.bottomAnchor, constant: 1)
        ])
    }
    
    
    private func setupLabelNumber() {
        scrolledMainView.addSubview(labelNumber)
        
        NSLayoutConstraint.activate([
            labelNumber.topAnchor.constraint(equalTo: textFieldName.bottomAnchor, constant: 13),
            labelNumber.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22)
        ])
    }
    
    
    private func setupTextFieldNumber() {
        scrolledMainView.addSubview(textFieldNumber)
        
        NSLayoutConstraint.activate([
            textFieldNumber.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22),
            textFieldNumber.trailingAnchor.constraint(equalTo: scrolledMainView.trailingAnchor, constant: -22),
            textFieldNumber.heightAnchor.constraint(equalToConstant: 44),
            textFieldNumber.topAnchor.constraint(equalTo: labelNumber.bottomAnchor, constant: 1)
        ])
    }
    
    
    private func setupLabelEmail() {
        scrolledMainView.addSubview(labelEmail)
        
        NSLayoutConstraint.activate([
            labelEmail.topAnchor.constraint(equalTo: textFieldNumber.bottomAnchor, constant: 13),
            labelEmail.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22)
        ])
    }
    
    private func setuptextFieldEmail() {
        scrolledMainView.addSubview(textFieldEmail)
        
        NSLayoutConstraint.activate([
            textFieldEmail.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22),
            textFieldEmail.trailingAnchor.constraint(equalTo: scrolledMainView.trailingAnchor, constant: -22),
            textFieldEmail.heightAnchor.constraint(equalToConstant: 44),
            textFieldEmail.topAnchor.constraint(equalTo: labelEmail.bottomAnchor, constant: 1)
        ])
    }
    
    
    private func setupLabelUserName() {
        scrolledMainView.addSubview(labelUserName)
        
        NSLayoutConstraint.activate([
            labelUserName.topAnchor.constraint(equalTo: textFieldEmail.bottomAnchor, constant: 13),
            labelUserName.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22)
        ])
    }
    
    
    private func setupTextFieldUserName() {
        scrolledMainView.addSubview(textFieldUserName)
        
        NSLayoutConstraint.activate([
            textFieldUserName.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22),
            textFieldUserName.trailingAnchor.constraint(equalTo: scrolledMainView.trailingAnchor, constant: -22),
            textFieldUserName.heightAnchor.constraint(equalToConstant: 44),
            textFieldUserName.topAnchor.constraint(equalTo: labelUserName.bottomAnchor, constant: 1)
        ])
    }
    
    
    private func setupLablePassword() {
        scrolledMainView.addSubview(labelPassword)
        
        NSLayoutConstraint.activate([
            labelPassword.topAnchor.constraint(equalTo: textFieldUserName.bottomAnchor, constant: 13),
            labelPassword.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22)
        ])
    }
    
    
    private func setupTextFieldPassword() {
        scrolledMainView.addSubview(textFieldPassword)
        
        NSLayoutConstraint.activate([
            textFieldPassword.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22),
            textFieldPassword.trailingAnchor.constraint(equalTo: scrolledMainView.trailingAnchor, constant: -22),
            textFieldPassword.heightAnchor.constraint(equalToConstant: 44),
            textFieldPassword.topAnchor.constraint(equalTo: labelPassword.bottomAnchor, constant: 1)
        ])
    }
    
    
    private func setupLabelConfirmPassword() {
        scrolledMainView.addSubview(labelConfirmPassword)
        
        NSLayoutConstraint.activate([
            labelConfirmPassword.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 13),
            labelConfirmPassword.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22)
        ])
    }
    
    
    private func setupTextFieldConfirmPassword() {
        scrolledMainView.addSubview(textFieldConfirmPassword)
        
        NSLayoutConstraint.activate([
            textFieldConfirmPassword.leadingAnchor.constraint(equalTo: scrolledMainView.leadingAnchor, constant: 22),
            textFieldConfirmPassword.trailingAnchor.constraint(equalTo: scrolledMainView.trailingAnchor, constant: -22),
            textFieldConfirmPassword.heightAnchor.constraint(equalToConstant: 44),
            textFieldConfirmPassword.topAnchor.constraint(equalTo: labelConfirmPassword.bottomAnchor, constant: 1)
        ])
    }
    
    private func setupSignUpButton() {
        scrolledMainView.addSubview(signUpButton)
        
        
        NSLayoutConstraint.activate([
            signUpButton.bottomAnchor.constraint(equalTo: scrolledMainView.bottomAnchor, constant: -100),
            signUpButton.centerXAnchor.constraint(equalTo: scrolledMainView.centerXAnchor),
            signUpButton.heightAnchor.constraint(equalToConstant: 40),
            signUpButton.widthAnchor.constraint(equalToConstant: 168)
        ])
        
        let signInLabel = UILabel()
        signInLabel.text = "Already have an account?"
        signInLabel.textColor = .black
        signInLabel.font = .systemFont(ofSize: 13)
        signInLabel.translatesAutoresizingMaskIntoConstraints = false
        scrolledMainView.addSubview(signInLabel)
        
        NSLayoutConstraint.activate([
            signInLabel.centerXAnchor.constraint(equalTo: scrolledMainView.centerXAnchor),
            signInLabel.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 10)
        ])
        
        scrolledMainView.addSubview(signInButton)
        
        NSLayoutConstraint.activate([
            signInButton.centerXAnchor.constraint(equalTo: scrolledMainView.centerXAnchor),
            signInButton.topAnchor.constraint(equalTo: signInLabel.bottomAnchor, constant: 5),
            signInButton.heightAnchor.constraint(equalToConstant: 40),
            signInButton.widthAnchor.constraint(equalToConstant: 168)
        ])
    }
    
    @objc func showFifthPage(_ sender: UIButton) {
        var Navigate = true
        
        if textFieldName.text?.isEmpty ?? true {
            textFieldName.layer.borderColor = UIColor.red.cgColor
            textFieldName.layer.borderWidth = 1
            Navigate = false
        }
        
        if textFieldNumber.text?.isEmpty ?? true {
            textFieldNumber.layer.borderColor = UIColor.red.cgColor
            textFieldNumber.layer.borderWidth = 1
        }
        
        if textFieldEmail.text?.isEmpty ?? true {
            textFieldEmail.layer.borderColor = UIColor.red.cgColor
            textFieldEmail.layer.borderWidth = 1
        }
        
        if textFieldUserName.text?.isEmpty ?? true {
            textFieldUserName.layer.borderColor = UIColor.red.cgColor
            textFieldUserName.layer.borderWidth = 1
        }
        
        if textFieldPassword.text?.isEmpty ?? true {
            textFieldPassword.layer.borderColor = UIColor.red.cgColor
            textFieldPassword.layer.borderWidth = 1
        }
        
        if textFieldConfirmPassword.text?.isEmpty ?? true {
            textFieldConfirmPassword.layer.borderColor = UIColor.red.cgColor
            textFieldConfirmPassword.layer.borderWidth = 1
            
        }
        if Navigate {
            let vc = FifthViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc private func showFirstPage(_ sender: UIButton) {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
