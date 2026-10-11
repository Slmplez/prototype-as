/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 */
package org.eclipse.jdi.internal.spy;

import com.ibm.icu.text.MessageFormat;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdi.internal.spy.JdwpCommandPacket;
import org.eclipse.jdi.internal.spy.JdwpConversation;
import org.eclipse.jdi.internal.spy.JdwpPacket;
import org.eclipse.jdi.internal.spy.JdwpReplyPacket;
import org.eclipse.jdi.internal.spy.UnableToParseDataException;
import org.eclipse.jdi.internal.spy.VerbosePacketStream;

public class TcpipSpy
extends Thread {
    private static final byte[] handshakeBytes = "JDWP-Handshake".getBytes();
    private boolean fVMtoDebugger;
    private DataInputStream fDataIn;
    private DataOutputStream fDataOut;
    private static VerbosePacketStream out = new VerbosePacketStream(System.out);
    private static Map fPackets = new HashMap();
    private static int fFieldIDSize;
    private static int fMethodIDSize;
    private static int fObjectIDSize;
    private static int fReferenceTypeIDSize;
    private static int fFrameIDSize;
    private static boolean fHasSizes;

    public TcpipSpy(boolean VMtoDebugger, InputStream in, OutputStream out) {
        this.fVMtoDebugger = VMtoDebugger;
        this.fDataIn = new DataInputStream(new BufferedInputStream(in));
        this.fDataOut = new DataOutputStream(new BufferedOutputStream(out));
        fHasSizes = false;
    }

    public static void main(String[] args) {
        int inPort = 0;
        String serverHost = null;
        int outPort = 0;
        String outputFile = null;
        try {
            inPort = Integer.parseInt(args[0]);
            serverHost = args[1];
            outPort = Integer.parseInt(args[2]);
            if (args.length > 3) {
                outputFile = args[3];
            }
        }
        catch (Exception exception) {
            out.println("usage: TcpipSpy <client port> <server host> <server port> [<output file>]");
            System.exit(-1);
        }
        if (outputFile != null) {
            File file = new File(outputFile);
            out.println(MessageFormat.format((String)"Writing output to {0}", (Object[])new String[]{file.getAbsolutePath()}));
            try {
                out = new VerbosePacketStream(new BufferedOutputStream(new FileOutputStream(file)));
            }
            catch (FileNotFoundException fileNotFoundException) {
                out.println(MessageFormat.format((String)"Could not open {0}.  Using stdout instead", (Object[])new String[]{file.getAbsolutePath()}));
            }
        }
        out.println();
        try {
            ServerSocket serverSock = new ServerSocket(inPort);
            Socket inSock = serverSock.accept();
            Socket outSock = new Socket(InetAddress.getByName(serverHost), outPort);
            new TcpipSpy(false, inSock.getInputStream(), outSock.getOutputStream()).start();
            new TcpipSpy(true, outSock.getInputStream(), inSock.getOutputStream()).start();
        }
        catch (Exception e) {
            out.println(e);
        }
    }

    /*
     * Unable to fully structure code
     */
    public void run() {
        try {
            handshakeLength = TcpipSpy.handshakeBytes.length;
            while (handshakeLength-- > 0) {
                b = this.fDataIn.read();
                this.fDataOut.write(b);
            }
            this.fDataOut.flush();
            while (true) {
                p = JdwpPacket.read(this.fDataIn);
                if (!this.fVMtoDebugger || (p.getFlags() & -128) != 0) {
                    TcpipSpy.store(p);
                }
                TcpipSpy.out.print(p, this.fVMtoDebugger);
                TcpipSpy.out.flush();
                p.write(this.fDataOut);
                this.fDataOut.flush();
            }
        }
        catch (EOFException v0) {
            try {
                this.fDataIn.close();
                this.fDataOut.close();
            }
            catch (IOException v1) {}
            TcpipSpy.out.flush();
        }
        catch (SocketException v2) {
            ** try [egrp 3[TRYBLOCK] [7 : 130->131)] { 
lbl28:
            // 1 sources

            try {
                this.fDataIn.close();
                this.fDataOut.close();
            }
            catch (IOException v3) {}
            TcpipSpy.out.flush();
        }
        catch (IOException e) {
            TcpipSpy.out.println(MessageFormat.format((String)"Caught exception: {0}", (Object[])new String[]{e.toString()}));
            e.printStackTrace(TcpipSpy.out);
lbl-1000:
            // 3 sources

            {
                catch (Throwable var3_5) {
                    try {
                        this.fDataIn.close();
                        this.fDataOut.close();
                    }
                    catch (IOException v4) {}
                    TcpipSpy.out.flush();
                    throw var3_5;
                }
            }
            try {
                this.fDataIn.close();
                this.fDataOut.close();
            }
            catch (IOException v5) {}
            TcpipSpy.out.flush();
        }
    }

    public static JdwpCommandPacket getCommand(int id) {
        JdwpConversation conversation = (JdwpConversation)fPackets.get(new Integer(id));
        if (conversation != null) {
            return conversation.getCommand();
        }
        return null;
    }

    protected static void store(JdwpPacket packet) {
        int id = packet.getId();
        JdwpConversation conversation = (JdwpConversation)fPackets.get(new Integer(id));
        if (conversation == null) {
            conversation = new JdwpConversation(id);
            fPackets.put(new Integer(id), conversation);
        }
        if ((packet.getFlags() & 0xFFFFFF80) != 0) {
            conversation.setReply((JdwpReplyPacket)packet);
        } else {
            conversation.setCommand((JdwpCommandPacket)packet);
        }
    }

    public static int getCommand(JdwpPacket packet) throws UnableToParseDataException {
        JdwpCommandPacket command = null;
        if (packet instanceof JdwpCommandPacket) {
            command = (JdwpCommandPacket)packet;
        } else {
            command = TcpipSpy.getCommand(packet.getId());
            if (command == null) {
                throw new UnableToParseDataException("This packet is marked as reply, but there is no command with the same id.", null);
            }
        }
        return command.getCommand();
    }

    public static boolean hasSizes() {
        return fHasSizes;
    }

    public static void setHasSizes(boolean value) {
        fHasSizes = value;
    }

    public static void setFieldIDSize(int fieldIDSize) {
        fFieldIDSize = fieldIDSize;
    }

    public static int getFieldIDSize() {
        return fFieldIDSize;
    }

    public static void setMethodIDSize(int methodIDSize) {
        fMethodIDSize = methodIDSize;
    }

    public static int getMethodIDSize() {
        return fMethodIDSize;
    }

    public static void setObjectIDSize(int objectIDSize) {
        fObjectIDSize = objectIDSize;
    }

    public static int getObjectIDSize() {
        return fObjectIDSize;
    }

    public static void setReferenceTypeIDSize(int referenceTypeIDSize) {
        fReferenceTypeIDSize = referenceTypeIDSize;
    }

    public static int getReferenceTypeIDSize() {
        return fReferenceTypeIDSize;
    }

    public static void setFrameIDSize(int frameIDSize) {
        fFrameIDSize = frameIDSize;
    }

    public static int getFrameIDSize() {
        return fFrameIDSize;
    }
}

