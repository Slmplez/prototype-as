/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.CebraMessage;
import de.etas.cebra.socket.ClientOrder;
import de.etas.cebra.socket.ClientReceiver;
import de.etas.cebra.socket.ClientSender;
import de.etas.cebra.socket.ToolClientDebug;
import de.etas.cebra.socket.ToolEntry;
import de.etas.util.LogFile;
import de.etas.util.Utilities;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.StringTokenizer;

public class ToolClient {
    private static Hashtable allToolClients = new Hashtable();
    private static Hashtable tableOfClients = new Hashtable();
    private static Hashtable tableOfTools = new Hashtable();
    private static LogFile toolClientLog = new LogFile(String.valueOf(Cebra.cebraLogPath) + Cebra.FS + "EtasToolClient.log");
    protected LogFile lf;
    protected Socket clientSocket;
    protected InputStream responseStream;
    protected OutputStream sendStream;
    protected Hashtable orderTable;
    protected ClientSender sender;
    protected ClientReceiver receiver;
    protected ToolEntry hostEntry;
    private String toolName;

    ToolClient() {
    }

    ToolClient(String name, ToolEntry toolEntry) {
        allToolClients.put(name, this);
        this.toolName = name;
        StringTokenizer st = new StringTokenizer(toolEntry.host, ".");
        this.lf = new LogFile(String.valueOf(Cebra.cebraLogPath) + Cebra.FS + "ClientAt" + st.nextToken() + "_" + toolEntry.port + ".log");
        if (!this.init(toolEntry.host, toolEntry.port)) {
            this.lf.logMessage("Initialization of client socket failed.");
            return;
        }
        this.orderTable = new Hashtable(32);
        this.hostEntry = toolEntry;
        this.sender = new ClientSender(this);
        tableOfClients.put(this.hostEntry, this.sender);
        this.receiver = new ClientReceiver(this, "Receiver for " + toolEntry.host + ":" + toolEntry.port);
        this.receiver.start();
        this.lf.logMessage("Tool client [" + toolEntry.host + ":" + toolEntry.port + "] started.");
    }

    final synchronized void addOrder(ClientOrder order) {
        this.orderTable.put(new Long(order.answer.getIdentifier()), order);
    }

    final void answerOrder(CebraMessage msg) {
        ClientOrder result = (ClientOrder)this.orderTable.remove(new Long(msg.getIdentifier()));
        if (result == null) {
            return;
        }
        result.answer.copy(msg);
        result.toolAPI.release();
    }

    public static final String[] getAllRegisteredTools() {
        return Utilities.sortStrings(tableOfTools.keys());
    }

    public static final ToolEntry getEntryForTool(String tool) {
        return (ToolEntry)tableOfTools.get(tool);
    }

    public String getToolName() {
        return this.toolName;
    }

    boolean init(String hostName, int port) {
        try {
            this.lf.logMessage("Try Init with " + hostName + " and " + port);
            InetAddress address = InetAddress.getByName(hostName);
            this.clientSocket = new Socket(address, port);
            this.responseStream = this.clientSocket.getInputStream();
            this.sendStream = this.clientSocket.getOutputStream();
            this.lf.logMessage("Init " + hostName + " at port " + port);
        }
        catch (Exception ex) {
            this.lf.logMessage("Exception in " + this.getClass().getName() + ".init:" + ex);
            return false;
        }
        return true;
    }

    public static final ClientSender initToolSocket() {
        return ToolClient.initToolSocket("undefined Tool Name", new ToolEntry());
    }

    public static final ClientSender initToolSocket(String tool) {
        return ToolClient.initToolSocket(tool, new ToolEntry());
    }

    public static final ClientSender initToolSocket(String toolName, ToolEntry toolEntry) {
        ClientSender aSender = null;
        String tool = toolName;
        String host = null;
        ToolEntry entry = null;
        int port = 0;
        if (tool == null) {
            tool = "default";
        }
        if ((entry = ToolClient.getEntryForTool(tool)) == null) {
            String hostName;
            entry = new ToolEntry();
            entry.host0 = null;
            entry.port0 = null;
            host = toolEntry.host;
            port = toolEntry.port;
            if (host == null) {
                try {
                    host = Cebra.getDefaultHost();
                    toolClientLog.logMessage("Warning: No host entry for tool " + tool + " in configuration file. Using default host " + host + ".");
                }
                catch (UnknownHostException unknownHostException) {
                    Cebra.println("Host " + host + " is unknown.");
                    return null;
                }
            }
            if ((hostName = Utilities.checkHostName(host)) == null) {
                Cebra.println("Host " + host + " is unknown.");
                return null;
            }
            entry.host = hostName;
            if (port == 0) {
                port = Cebra.getDefaultToolPort();
                toolClientLog.logMessage("Using port " + port + " for " + tool + ".");
            }
            entry.port = port;
            if (!ToolClient.registerTool(tool, entry)) {
                Cebra.println("Could not register " + tool);
            }
        }
        if ((aSender = (ClientSender)tableOfClients.get(entry)) != null) {
            aSender.addUser();
            return aSender;
        }
        aSender = Cebra.debug ? new ToolClientDebug((String)toolName, (ToolEntry)entry).sender : new ToolClient((String)toolName, (ToolEntry)entry).sender;
        if (aSender == null) {
            tableOfTools.remove(toolName);
        }
        return aSender;
    }

    CebraMessage receiveCebraMessage() {
        int lengthMessage = 0;
        int numberOfBytesRead = 0;
        CebraMessage msg = new CebraMessage();
        byte[] token = new byte[8];
        try {
            this.responseStream.read(token, 0, 8);
            long msgID = 0L;
            int i = 7;
            while (i > 0) {
                msgID |= (long)(token[i] & 0xFF);
                msgID <<= 8;
                --i;
            }
            msg.setIdentifier(msgID |= (long)(token[0] & 0xFF));
            this.responseStream.read(token, 0, 4);
            int lengthHeader = CebraMessage.convertBytesToInt(token, 0);
            this.responseStream.read(token, 0, 4);
            lengthMessage = 0;
            i = 3;
            while (i > 0) {
                lengthMessage |= token[i] & 0xFF;
                lengthMessage <<= 8;
                --i;
            }
            lengthMessage |= token[0] & 0xFF;
            i = 0;
            while (i < lengthHeader) {
                this.responseStream.read(token, 0, 5);
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
            if (lengthMessage > 0) {
                byte[] message = new byte[lengthMessage];
                byte[] tmp = new byte[102400];
                while (numberOfBytesRead < lengthMessage) {
                    int numberOfBytesReadPerPack = lengthMessage - numberOfBytesRead;
                    if (numberOfBytesReadPerPack > 102400) {
                        numberOfBytesReadPerPack = 102400;
                    }
                    if ((numberOfBytesReadPerPack = this.responseStream.read(tmp, 0, numberOfBytesReadPerPack)) < 1) break;
                    System.arraycopy(tmp, 0, message, numberOfBytesRead, numberOfBytesReadPerPack);
                    numberOfBytesRead += numberOfBytesReadPerPack;
                }
                msg.buildBody(message);
            } else {
                numberOfBytesRead = 0;
                msg.buildBody(new byte[0]);
            }
        }
        catch (Exception e) {
            this.lf.logMessage("Receive CebraMessage: " + e);
        }
        if (numberOfBytesRead != lengthMessage) {
            this.lf.logMessage("Receive CebraMessage: Only read " + numberOfBytesRead + " Bytes instead of " + lengthMessage);
        }
        return msg;
    }

    public static final boolean registerTool(String tool, ToolEntry entry) {
        if (tableOfTools.get(tool) != null) {
            return false;
        }
        ToolEntry newEntry = new ToolEntry();
        boolean marked = false;
        if (entry.host == null) {
            marked = true;
            newEntry.host0 = entry.host0;
            if (newEntry.host0 == null) {
                try {
                    newEntry.host = Cebra.getDefaultHost();
                }
                catch (Exception exception) {
                    return false;
                }
            } else {
                newEntry.host = Utilities.checkHostName(entry.host0);
                if (newEntry.host == null) {
                    return false;
                }
            }
        }
        if (entry.port == 0) {
            marked = true;
            newEntry.port0 = entry.port0;
            try {
                newEntry.port = newEntry.port0 == null ? Cebra.getDefaultToolPort() : Integer.parseInt(newEntry.port0);
            }
            catch (Exception exception) {
                return false;
            }
        }
        if (marked) {
            tableOfTools.put(tool, newEntry);
        } else {
            tableOfTools.put(tool, entry);
        }
        return true;
    }

    void sendCebraMessage(CebraMessage msg) {
        if (msg == null) {
            this.lf.logMessage("sendCebraMessage: Cannot send NULL-message");
            return;
        }
        try {
            this.sendStream.write(msg.asByteStream());
        }
        catch (Exception e) {
            this.lf.logMessage("sendCebraMessage: " + e);
        }
    }

    private boolean shutDown() {
        this.lf.logMessage("Shut down");
        if (this.clientSocket == null) {
            allToolClients.remove(this.toolName);
            return false;
        }
        try {
            this.lf.logMessage("Shut down");
            this.responseStream.close();
            this.sendStream.close();
            this.clientSocket.close();
            this.receiver.stop();
            tableOfClients.remove(this.hostEntry);
            allToolClients.remove(this.toolName);
            this.clientSocket = null;
            this.sender = null;
            this.receiver = null;
            return true;
        }
        catch (Exception e) {
            this.lf.logMessage("Closing Tool Client: " + e);
            return false;
        }
    }

    public static void shutDownAllToolClients(long timeOut) {
        Enumeration enumeration = allToolClients.keys();
        while (enumeration.hasMoreElements()) {
            String toolName = (String)enumeration.nextElement();
            ToolClient.shutDownToolClient(toolName, timeOut);
        }
    }

    public static boolean shutDownToolClient(String toolName, long timeOut) {
        ToolClient toolClient = (ToolClient)allToolClients.get(toolName);
        if (toolClient == null) {
            return false;
        }
        long time = System.currentTimeMillis();
        if (toolClient.orderTable != null) {
            while (!toolClient.orderTable.isEmpty()) {
                if (System.currentTimeMillis() - time <= timeOut) continue;
                return false;
            }
        }
        return toolClient.shutDown();
    }

    public String toString() {
        return "<Tool Client #" + this.hostEntry + ">";
    }
}

