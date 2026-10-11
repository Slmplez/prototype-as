/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassNotPreparedException
 *  com.sun.jdi.InternalException
 *  com.sun.jdi.InvalidStackFrameException
 *  com.sun.jdi.Mirror
 *  com.sun.jdi.NativeMethodException
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.VMMismatchException
 *  com.sun.jdi.VMOutOfMemoryException
 *  com.sun.jdi.VirtualMachine
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ClassNotPreparedException;
import com.sun.jdi.InternalException;
import com.sun.jdi.InvalidStackFrameException;
import com.sun.jdi.Mirror;
import com.sun.jdi.NativeMethodException;
import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.VMMismatchException;
import com.sun.jdi.VMOutOfMemoryException;
import com.sun.jdi.VirtualMachine;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Map;
import org.eclipse.jdi.Bootstrap;
import org.eclipse.jdi.hcr.OperationRefusedException;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.VerboseWriter;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.VirtualMachineManagerImpl;
import org.eclipse.jdi.internal.jdwp.JdwpCommandPacket;
import org.eclipse.jdi.internal.jdwp.JdwpPacket;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;
import org.eclipse.jdi.internal.jdwp.JdwpString;
import org.eclipse.jdt.internal.debug.core.JDIDebugOptions;

public class MirrorImpl
implements Mirror {
    protected String fDescription;
    private VirtualMachineImpl fVirtualMachineImpl;
    protected VerboseWriter fVerboseWriter = null;
    private boolean fPendingJdwpRequest = false;

    public MirrorImpl(String description) {
        this.fDescription = description;
        this.fVirtualMachineImpl = (VirtualMachineImpl)this;
        PrintWriter writer = ((VirtualMachineManagerImpl)Bootstrap.virtualMachineManager()).verbosePrintWriter();
        if (writer != null) {
            this.fVerboseWriter = new VerboseWriter(writer);
        }
    }

    public MirrorImpl(String description, VirtualMachineImpl virtualMachineImpl) {
        this.fVirtualMachineImpl = virtualMachineImpl;
        this.fDescription = description;
        PrintWriter writer = ((VirtualMachineManagerImpl)Bootstrap.virtualMachineManager()).verbosePrintWriter();
        if (writer != null) {
            this.fVerboseWriter = new VerboseWriter(writer);
        }
    }

    public String toString() {
        return this.fDescription;
    }

    public VirtualMachine virtualMachine() {
        return this.fVirtualMachineImpl;
    }

    public VirtualMachineImpl virtualMachineImpl() {
        return this.fVirtualMachineImpl;
    }

    public void initJdwpEventSet(JdwpCommandPacket commandPacket) {
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println("Received event set");
            this.fVerboseWriter.println("length", commandPacket.getLength());
            this.fVerboseWriter.println("id", commandPacket.getId());
            this.fVerboseWriter.println("flags", commandPacket.getFlags(), JdwpPacket.getFlagMap());
            this.fVerboseWriter.println("command set", (byte)(commandPacket.getCommand() >>> 8));
            this.fVerboseWriter.println("command", (byte)commandPacket.getCommand());
        }
    }

    public void handledJdwpEventSet() {
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println();
            this.fVerboseWriter.flush();
        }
    }

    public void initJdwpRequest() {
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.gotoPosition(6);
        }
    }

    public void writeVerboseCommandPacketHeader(JdwpCommandPacket commandPacket) {
        if (this.fVerboseWriter != null) {
            int command = commandPacket.getCommand();
            int currentPosition = this.fVerboseWriter.position();
            this.fVerboseWriter.gotoPosition(0);
            this.fVerboseWriter.print("Sending command (");
            this.fVerboseWriter.printValue(command, JdwpCommandPacket.commandMap());
            this.fVerboseWriter.println(")");
            this.fVerboseWriter.println("length", commandPacket.getLength());
            this.fVerboseWriter.println("id", commandPacket.getId());
            this.fVerboseWriter.println("flags", commandPacket.getFlags(), JdwpPacket.getFlagMap());
            this.fVerboseWriter.println("command set", (byte)(command >>> 8));
            this.fVerboseWriter.println("command", (byte)command);
            this.fVerboseWriter.gotoPosition(currentPosition);
        }
    }

    public void handledJdwpRequest() {
        if (this.fVerboseWriter != null && this.fPendingJdwpRequest) {
            this.fVerboseWriter.println();
            this.fVerboseWriter.flush();
        }
        this.fPendingJdwpRequest = false;
    }

    public JdwpReplyPacket requestVM(int command, byte[] outData) {
        JdwpCommandPacket commandPacket = new JdwpCommandPacket(command);
        commandPacket.setData(outData);
        long sent = System.currentTimeMillis();
        this.fVirtualMachineImpl.packetSendManager().sendPacket(commandPacket);
        this.fPendingJdwpRequest = true;
        this.writeVerboseCommandPacketHeader(commandPacket);
        JdwpReplyPacket reply = this.fVirtualMachineImpl.packetReceiveManager().getReply(commandPacket);
        long recieved = System.currentTimeMillis();
        if (JDIDebugOptions.DEBUG_JDI_REQUEST_TIMES) {
            StringBuffer buf = new StringBuffer();
            buf.append(JDIDebugOptions.FORMAT.format(new Date(sent)));
            buf.append(" JDI Request: ");
            buf.append(commandPacket.toString());
            buf.append("\n\tResponse Time: ");
            buf.append(recieved - sent);
            buf.append("ms");
            buf.append(" length: ");
            buf.append(reply.getLength());
            System.out.println(buf.toString());
        }
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println();
            this.fVerboseWriter.println("Received reply");
            this.fVerboseWriter.println("length", reply.getLength());
            this.fVerboseWriter.println("id", reply.getId());
            this.fVerboseWriter.println("flags", reply.getFlags(), JdwpPacket.getFlagMap());
            this.fVerboseWriter.println("error code", reply.errorCode(), JdwpReplyPacket.errorMap());
        }
        return reply;
    }

    public JdwpReplyPacket requestVM(int command, ByteArrayOutputStream outData) {
        return this.requestVM(command, outData.toByteArray());
    }

    public JdwpReplyPacket requestVM(int command, ObjectReferenceImpl object) {
        ByteArrayOutputStream byteOutStream = new ByteArrayOutputStream();
        DataOutputStream dataOutStream = new DataOutputStream(byteOutStream);
        try {
            object.write(this, dataOutStream);
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
        }
        return this.requestVM(command, byteOutStream);
    }

    public JdwpReplyPacket requestVM(int command, ReferenceTypeImpl refType) {
        ByteArrayOutputStream byteOutStream = new ByteArrayOutputStream();
        DataOutputStream dataOutStream = new DataOutputStream(byteOutStream);
        try {
            refType.write(this, dataOutStream);
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
        }
        return this.requestVM(command, byteOutStream);
    }

    public JdwpReplyPacket requestVM(int command) {
        return this.requestVM(command, (byte[])null);
    }

    public void defaultReplyErrorHandler(int error) {
        switch (error) {
            case 0: {
                break;
            }
            case 20: {
                throw new ObjectCollectedException();
            }
            case 21: {
                throw new ClassNotPreparedException();
            }
            case 22: {
                throw new ClassNotPreparedException();
            }
            case 110: {
                throw new VMOutOfMemoryException();
            }
            case 103: {
                throw new IllegalArgumentException();
            }
            case 511: {
                throw new NativeMethodException();
            }
            case 30: {
                throw new InvalidStackFrameException();
            }
            case 99: {
                throw new UnsupportedOperationException();
            }
            case 900: {
                throw new OperationRefusedException();
            }
            case 112: {
                throw new VMDisconnectedException();
            }
            default: {
                throw new InternalException(String.valueOf(JDIMessages.MirrorImpl_Got_error_code_in_reply___1) + error, error);
            }
        }
    }

    public void defaultIOExceptionHandler(Exception e) {
        throw new InternalException(String.valueOf(JDIMessages.MirrorImpl_Got_invalid_data___2) + e);
    }

    public final JdwpCommandPacket getCommandVM(int command, long timeout) throws InterruptedException {
        return this.fVirtualMachineImpl.packetReceiveManager().getCommand(command, timeout);
    }

    public void checkVM(Mirror mirror) throws VMMismatchException {
        if (((MirrorImpl)mirror).virtualMachineImpl() != this.virtualMachineImpl()) {
            throw new VMMismatchException();
        }
    }

    public void disconnectVM() {
        this.fVirtualMachineImpl.setDisconnected(true);
        this.fVirtualMachineImpl.packetSendManager().disconnectVM();
        this.fVirtualMachineImpl.packetReceiveManager().disconnectVM();
        ((VirtualMachineManagerImpl)Bootstrap.virtualMachineManager()).removeConnectedVM(this.fVirtualMachineImpl);
    }

    public byte readByte(String description, DataInputStream in) throws IOException {
        byte result = in.readByte();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result);
        }
        return result;
    }

    public short readShort(String description, DataInputStream in) throws IOException {
        short result = in.readShort();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result);
        }
        return result;
    }

    public int readInt(String description, DataInputStream in) throws IOException {
        int result = in.readInt();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result);
        }
        return result;
    }

    public long readLong(String description, DataInputStream in) throws IOException {
        long result = in.readLong();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result);
        }
        return result;
    }

    public byte readByte(String description, Map valueToString, DataInputStream in) throws IOException {
        byte result = in.readByte();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result, valueToString);
        }
        return result;
    }

    public short readShort(String description, Map valueToString, DataInputStream in) throws IOException {
        short result = in.readShort();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result, valueToString);
        }
        return result;
    }

    public int readInt(String description, Map valueToString, DataInputStream in) throws IOException {
        int result = in.readInt();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result, valueToString);
        }
        return result;
    }

    public String readString(String description, DataInputStream in) throws IOException {
        String result = JdwpString.read(in);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result);
        }
        return result;
    }

    public boolean readBoolean(String description, DataInputStream in) throws IOException {
        boolean result = in.readBoolean();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result);
        }
        return result;
    }

    public char readChar(String description, DataInputStream in) throws IOException {
        char result = in.readChar();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result);
        }
        return result;
    }

    public double readDouble(String description, DataInputStream in) throws IOException {
        double result = in.readDouble();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result);
        }
        return result;
    }

    public float readFloat(String description, DataInputStream in) throws IOException {
        float result = in.readFloat();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result);
        }
        return result;
    }

    public byte[] readByteArray(int length, String description, DataInputStream in) throws IOException {
        byte[] result = new byte[length];
        in.readFully(result);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result);
        }
        return result;
    }

    public void writeByte(byte value, String description, DataOutputStream out) throws IOException {
        out.writeByte(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value);
        }
    }

    public void writeShort(short value, String description, DataOutputStream out) throws IOException {
        out.writeShort(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value);
        }
    }

    public void writeInt(int value, String description, DataOutputStream out) throws IOException {
        out.writeInt(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value);
        }
    }

    public void writeLong(long value, String description, DataOutputStream out) throws IOException {
        out.writeLong(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value);
        }
    }

    public void writeByte(byte value, String description, Map valueToString, DataOutputStream out) throws IOException {
        out.writeByte(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value, valueToString);
        }
    }

    public void writeShort(short value, String description, Map valueToString, DataOutputStream out) throws IOException {
        out.writeShort(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value, valueToString);
        }
    }

    public void writeInt(int value, String description, Map valueToString, DataOutputStream out) throws IOException {
        out.writeInt(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value, valueToString);
        }
    }

    public void writeString(String value, String description, DataOutputStream out) throws IOException {
        JdwpString.write(value, out);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value);
        }
    }

    public void writeBoolean(boolean value, String description, DataOutputStream out) throws IOException {
        out.writeBoolean(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value);
        }
    }

    public void writeChar(char value, String description, DataOutputStream out) throws IOException {
        out.writeChar(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value);
        }
    }

    public void writeDouble(double value, String description, DataOutputStream out) throws IOException {
        out.writeDouble(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value);
        }
    }

    public void writeFloat(float value, String description, DataOutputStream out) throws IOException {
        out.writeFloat(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value);
        }
    }

    public void writeShort(short value, String description, String[] bitNames, DataOutputStream out) throws IOException {
        out.writeShort(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value, bitNames);
        }
    }

    public void writeInt(int value, String description, String[] bitNames, DataOutputStream out) throws IOException {
        out.writeInt(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value, bitNames);
        }
    }

    public byte readByte(String description, String[] bitNames, DataInputStream in) throws IOException {
        byte result = in.readByte();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result, bitNames);
        }
        return result;
    }

    public short readShort(String description, String[] bitNames, DataInputStream in) throws IOException {
        short result = in.readShort();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result, bitNames);
        }
        return result;
    }

    public int readInt(String description, String[] bitNames, DataInputStream in) throws IOException {
        int result = in.readInt();
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, result, bitNames);
        }
        return result;
    }

    public void writeByte(byte value, String description, String[] bitNames, DataOutputStream out) throws IOException {
        out.writeByte(value);
        if (this.fVerboseWriter != null) {
            this.fVerboseWriter.println(description, value, bitNames);
        }
    }

    public VerboseWriter verboseWriter() {
        return this.fVerboseWriter;
    }
}

