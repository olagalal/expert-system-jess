package jess;

import java.awt.EventQueue;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import java.awt.Font;
import java.awt.Color;
import java.awt.Insets;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;

public class MainJESS extends JFrame {

    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    MainJESS frame = new MainJESS();
                    frame.setVisible(true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public MainJESS() {

        // JFrame properties
        setTitle("Jess Project");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setUndecorated(true);
        setSize(300, 200);
        setResizable(false);
        setVisible(true);
        setLocationRelativeTo(null);

        // JPanel properties
        JPanel p1 = new JPanel();
        p1.setBackground(Color.DARK_GRAY);
        p1.setFont(new Font("Serif", Font.PLAIN, 20));
        p1.setLayout(null);
        setContentPane(p1);

        // Exit
        JButton X = new JButton("X");
        X.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        System.exit(0);
                    }
                }).start();
            }
        });
        X.setForeground(Color.WHITE);
        X.setLayout(null);
            //look like a Jlabel
        X.setFocusPainted(false);
        X.setMargin(new Insets(0, 0, 0, 0));
        X.setContentAreaFilled(false);
        X.setBorderPainted(false);
        X.setOpaque(false);
        X.setBorderPainted(false);
            //
        p1.add(X);
        X.setBounds(250, 7, 50, 50);

        //Welcome Label
        JLabel label1 = new JLabel("Welcome to our project");
        label1.setForeground(Color.WHITE);
        label1.setLayout(null);
        p1.add(label1);
        label1.setBounds(75, 7, 350, 100);

        //Start Button
        JButton btnOpenTheProject = new JButton("Start");
        btnOpenTheProject.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        Rete r = new Rete();
                        try {
                            r.batch("languages.clp");
                        } catch (JessException ex) {
                            ex.printStackTrace();
                        }
                    }
                }).start();
            }
        });
        btnOpenTheProject.setLayout(null);
        btnOpenTheProject.setFont(new Font("Tahoma", Font.BOLD, 11));
        p1.add(btnOpenTheProject);
        btnOpenTheProject.setBounds(50, 90, 90, 30);

        //About Button
        JButton btnAbout = new JButton("About");
        btnAbout.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent arg0) {
                String msg = "JESS Project by:\n1- Ola Glal\n2- Ola Nazmy\n3- Mahmoud Qussai\n4- Abdelrahman Saied\n5- Ahmed Hazem\n\n";
                JOptionPane.showMessageDialog(null, msg, "About the project", JOptionPane.INFORMATION_MESSAGE);
            }
        });
        btnAbout.setLayout(null);
        btnAbout.setFont(new Font("Tahoma", Font.BOLD, 11));
        p1.add(btnAbout);
        btnAbout.setBounds(150, 90, 90, 30);

    }
}
