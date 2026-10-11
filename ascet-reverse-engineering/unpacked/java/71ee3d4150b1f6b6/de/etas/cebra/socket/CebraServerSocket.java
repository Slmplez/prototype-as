/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.CebraServer;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;

public final class CebraServerSocket
extends Thread {
    private ServerSocket serverSocket;

    public CebraServerSocket(int port) {
        super("Cebra Server Socket");
        try {
            InetAddress inet;
            try {
                inet = InetAddress.getLocalHost();
            }
            catch (UnknownHostException unknownHostException) {
                inet = InetAddress.getByName("127.0.0.1");
            }
            this.serverSocket = new ServerSocket(port, 10, inet);
            this.start();
        }
        catch (IOException ex) {
            Cebra.println("Exception in CebraServerSocket Constructor.\n\rPort: " + port + "\n\r" + ex);
            this.serverSocket = null;
        }
    }

    public void run() {
        try {
            while (true) {
                Socket aktSock = this.serverSocket.accept();
                Cebra.println("Accept connection at port " + this.serverSocket.getLocalPort());
                new CebraServer(aktSock).start();
            }
        }
        catch (IOException ex) {
            Cebra.println("Run CebraServerSocket failed." + ex);
            return;
        }
    }

    public boolean shutDown() {
        try {
            this.stop();
            this.serverSocket.close();
        }
        catch (Exception exception) {
            return false;
        }
        return true;
    }
}

