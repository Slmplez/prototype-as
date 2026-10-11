/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.CebraMessage;
import de.etas.cebra.socket.ErrorHandle;
import de.etas.cebra.socket.ServerScript;
import de.etas.util.LogFile;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Enumeration;
import java.util.Vector;

public final class CebraServer
extends Thread {
    private static LogFile lf = new LogFile(String.valueOf(Cebra.cebraLogPath) + Cebra.FS + "CebraServer.log");
    private static Vector allCebraServer = new Vector();
    private Socket aktSock;
    private InputStream orderStream;
    private OutputStream resultStream;

    CebraServer(Socket sock) {
        this(sock, "Cebra Server");
    }

    CebraServer(Socket sock, String threadName) {
        super(threadName);
        try {
            this.aktSock = sock;
            this.orderStream = sock.getInputStream();
            this.resultStream = sock.getOutputStream();
        }
        catch (IOException e) {
            Cebra.println(e.toString());
        }
        allCebraServer.addElement(this);
        this.logEntry("Creation");
    }

    public boolean close() {
        try {
            this.aktSock.close();
            this.orderStream.close();
            this.resultStream.close();
        }
        catch (Exception exception) {
            return false;
        }
        return true;
    }

    protected final void logEntry(String msg) {
        lf.logMessage(msg);
    }

    final CebraMessage receive() {
        int numberOfBytesRead;
        byte[] token = new byte[8];
        try {
            this.orderStream.read(token, 0, 8);
        }
        catch (IOException iOException) {
            return null;
        }
        CebraMessage msg = new CebraMessage();
        msg.messageID = CebraMessage.convertBytesToLong(token, 0);
        try {
            this.orderStream.read(token, 0, 4);
        }
        catch (IOException iOException) {
            return null;
        }
        int lengthHeader = CebraMessage.convertBytesToInt(token, 0);
        try {
            this.orderStream.read(token, 0, 4);
        }
        catch (IOException iOException) {
            return null;
        }
        int lengthMessage = CebraMessage.convertBytesToInt(token, 0);
        try {
            int i = 0;
            while (i < lengthHeader) {
                this.orderStream.read(token, 0, 5);
                int temp = 0;
                int j = 4;
                while (j > 1) {
                    temp |= token[j] & 0xFF;
                    temp <<= 8;
                    --j;
                }
                msg.buildHeader((char)token[0], temp |= token[1] & 0xFF);
                ++i;
            }
        }
        catch (IOException iOException) {
            return null;
        }
        if (lengthMessage != 0) {
            numberOfBytesRead = 0;
            byte[] message = new byte[lengthMessage];
            try {
                byte[] tmp = new byte[102400];
                while (numberOfBytesRead < lengthMessage) {
                    int numberOfBytesReadPerPack = this.orderStream.read(tmp);
                    if (numberOfBytesReadPerPack >= 1) {
                        System.arraycopy(tmp, 0, message, numberOfBytesRead, numberOfBytesReadPerPack);
                        numberOfBytesRead += numberOfBytesReadPerPack;
                        continue;
                    }
                    break;
                }
            }
            catch (IOException iOException) {
                return null;
            }
            msg.buildBody(message);
        } else {
            numberOfBytesRead = 0;
            msg.buildBody(new byte[0]);
        }
        if (numberOfBytesRead != lengthMessage) {
            return null;
        }
        if (Cebra.debug) {
            this.logEntry("Receive:" + Cebra.LF + msg);
        }
        return msg;
    }

    public void run() {
        block8: {
            while (true) {
                CebraMessage msg;
                try {
                    msg = this.receive();
                }
                catch (Exception e) {
                    lf.logMessage("Socket Server message loop: " + e);
                    break block8;
                }
                if (msg == null) break;
                if (msg.isEmptyMessage()) {
                    lf.logMessage("Cebra Server: Received empty message.");
                    break block8;
                }
                if (msg.isErrorMessage()) {
                    CebraMessage retMsg = msg.answer();
                    msg.reset();
                    ErrorHandle errmsg = (ErrorHandle)msg.readNext().oHandle;
                    lf.logMessage("Received error message #" + errmsg.errcode + ":'" + errmsg.errmsg + "'");
                    retMsg.setQuitMessage();
                    if (retMsg.isHandshakeMessage()) {
                        this.send(retMsg);
                    }
                    break block8;
                }
                new ServerScript(msg, this);
            }
            lf.logMessage("Cebra Server: Client socket not connected.");
        }
        try {
            this.aktSock.close();
        }
        catch (IOException iOException) {}
    }

    final void send(CebraMessage msg) {
        if (!msg.isHandshakeMessage()) {
            return;
        }
        if (Cebra.debug) {
            this.logEntry("Send:" + Cebra.LF + msg);
        }
        try {
            this.resultStream.write(msg.asByteStream());
        }
        catch (Exception e) {
            lf.logMessage("CebraServerSocket: " + e);
        }
    }

    private boolean shutDown(boolean check, long timeOut) {
        long time = System.currentTimeMillis();
        while (ServerScript.hasInstances() && check) {
            if (System.currentTimeMillis() - time <= timeOut) continue;
            return false;
        }
        try {
            this.close();
        }
        catch (Exception exception) {
            return false;
        }
        return true;
    }

    public static void shutDownAllCebraServers(boolean check, long timeOut) {
        Enumeration enumeration = allCebraServer.elements();
        while (enumeration.hasMoreElements()) {
            CebraServer cebraServer = (CebraServer)enumeration.nextElement();
            CebraServer.shutDownCebraServer(cebraServer, check, timeOut);
        }
    }

    public static void shutDownCebraServer(CebraServer cebraServer, boolean check, long timeOut) {
        cebraServer.shutDown(check, timeOut);
        cebraServer.stop();
    }
}

