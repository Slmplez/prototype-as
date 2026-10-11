/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.toolAPI;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.ClassMethodCall;
import de.etas.cebra.socket.ClientSender;
import de.etas.cebra.socket.ControlMessageCall;
import de.etas.cebra.socket.InstanceMethodCall;
import de.etas.cebra.socket.MethodCall;
import de.etas.cebra.socket.ToolClient;
import de.etas.cebra.toolAPI.Array;
import de.etas.cebra.toolAPI.Collection;
import de.etas.cebra.toolAPI.NullHandleException;
import de.etas.cebra.toolAPI.OrderedCollection;
import de.etas.multitasking.Semaphore;
import de.etas.types.Identifiable;
import de.etas.types.RemoteHandle;
import de.etas.util.LogFile;

public abstract class ToolAPI
extends RemoteHandle {
    private Semaphore block = new Semaphore(false);
    private static ClientSender defSender;
    protected ClientSender sender = defSender;
    private static LogFile LogData;

    static {
        Cebra.initCebraToolIndependent(false, false, null, null);
        LogData = new LogFile(String.valueOf(Cebra.cebraLogPath) + Cebra.FS + "ToolAPI.log");
        defSender = ToolClient.initToolSocket();
    }

    protected ToolAPI() {
    }

    protected ToolAPI(ClientSender s) {
        this();
        if (s != null) {
            this.sender = s;
            this.sender.addUser();
        }
    }

    protected ToolAPI(String toolName) {
        this();
        this.sender = ToolClient.initToolSocket(toolName);
    }

    public final void block() {
        this.block.Wait();
    }

    public final void call(MethodCall mc) {
        this.call(mc, true);
    }

    public final void call(MethodCall mc, boolean block) {
        if (this.sender == null) {
            return;
        }
        if (mc == null) {
            return;
        }
        if (mc.getMessage() == null) {
            return;
        }
        if (block) {
            this.sender.sendMessage(this, mc.getMessage(), mc.getResult());
            this.block();
        } else {
            this.sender.sendMessage(mc.getMessage());
        }
    }

    private final void close() {
        this.sender = null;
    }

    public final ClassMethodCall createClassMethodCall(String clazz, String method) throws NullHandleException {
        if (method == null) {
            throw new NullHandleException("Cannot create method call for method 'null'.");
        }
        return new ClassMethodCall(clazz, method, this);
    }

    public final ControlMessageCall createControlMessageCall(String method) throws NullHandleException {
        if (method == null) {
            throw new NullHandleException("Cannot create method call for method 'null'.");
        }
        return new ControlMessageCall(method, this);
    }

    public final ControlMessageCall createControlMessageCall(String method, boolean b) throws NullHandleException {
        if (method == null) {
            throw new NullHandleException("Cannot create method call for method 'null'.");
        }
        return new ControlMessageCall(method, b, this);
    }

    public final InstanceMethodCall createInstanceMethodCall(String method) throws NullHandleException {
        if (this.nullHandle()) {
            throw new NullHandleException("Cannot create method call " + method + " with null handle in tool API");
        }
        if (method == null) {
            throw new NullHandleException("Cannot create method call for method 'null'.");
        }
        return new InstanceMethodCall(this, method, this);
    }

    public abstract boolean[] getBooleanFromCollection(Collection var1);

    public abstract byte[] getBytesFromCollection(Collection var1);

    public abstract char[] getCharacterFromCollection(Collection var1);

    public abstract double[] getDoubleFromCollection(Collection var1);

    public abstract float[] getFloatFromCollection(Collection var1);

    public abstract int[] getIntegerFromCollection(Collection var1);

    public abstract Object[] getLocalObjectsFromCollection(Collection var1);

    public abstract long[] getLongFromCollection(Collection var1);

    public abstract Object[] getObjectsFromCollection(Collection var1);

    protected abstract Identifiable[] getRemoteObjectsFromCollection(Collection var1);

    public final ClientSender getSender() {
        return this.sender;
    }

    public abstract short[] getShortFromCollection(Collection var1);

    public abstract String[] getStringsFromCollection(Collection var1);

    public final void handleException(Exception ex) {
        this.logEntry(ex.toString());
        Cebra.println(String.valueOf(this.getClass().getName()) + ":" + ex.toString());
    }

    protected void init() {
        this.block = new Semaphore(false);
        this.sender = defSender;
    }

    protected void init(ClientSender s) {
        this.init();
        if (s != null) {
            this.sender = s;
            this.sender.addUser();
        }
    }

    public final void logEntry(String msg) {
        LogData.logMessage(msg);
        if (Cebra.debug) {
            Cebra.println(msg);
        }
    }

    public final void release() {
        this.block.Put();
    }

    protected final boolean removeObject(Identifiable obj) {
        if (obj == null) {
            return false;
        }
        if (obj.getIdentifier() == 0L) {
            return false;
        }
        try {
            ControlMessageCall msg = this.createControlMessageCall("destroyObjectForId:");
            msg.appendParameter(obj.getIdentifier());
            this.call(msg);
            msg.getResultVoid();
            return true;
        }
        catch (Exception exception) {
            return false;
        }
    }

    public abstract Array setArrayFromValues(byte[] var1);

    public abstract Array setArrayFromValues(char[] var1);

    public abstract Array setArrayFromValues(double[] var1);

    public abstract Array setArrayFromValues(float[] var1);

    public abstract Array setArrayFromValues(int[] var1);

    public abstract Array setArrayFromValues(long[] var1);

    public abstract Array setArrayFromValues(Identifiable[] var1);

    public abstract Array setArrayFromValues(Object[] var1);

    public abstract Array setArrayFromValues(String[] var1);

    public abstract Array setArrayFromValues(short[] var1);

    public abstract Array setArrayFromValues(boolean[] var1);

    public abstract OrderedCollection setOrderedCollectionFromValues(byte[] var1);

    public abstract OrderedCollection setOrderedCollectionFromValues(char[] var1);

    public abstract OrderedCollection setOrderedCollectionFromValues(double[] var1);

    public abstract OrderedCollection setOrderedCollectionFromValues(float[] var1);

    public abstract OrderedCollection setOrderedCollectionFromValues(int[] var1);

    public abstract OrderedCollection setOrderedCollectionFromValues(long[] var1);

    public abstract OrderedCollection setOrderedCollectionFromValues(Identifiable[] var1);

    public abstract OrderedCollection setOrderedCollectionFromValues(Object[] var1);

    public abstract OrderedCollection setOrderedCollectionFromValues(String[] var1);

    public abstract OrderedCollection setOrderedCollectionFromValues(short[] var1);

    public abstract OrderedCollection setOrderedCollectionFromValues(boolean[] var1);
}

