/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.toolAPI;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.ClassMethodCall;
import de.etas.cebra.socket.ClientSender;
import de.etas.cebra.socket.ControlMessageCall;
import de.etas.cebra.socket.ErrorResultException;
import de.etas.cebra.socket.InstanceMethodCall;
import de.etas.cebra.socket.ToolClient;
import de.etas.cebra.socket.ToolEntry;
import de.etas.cebra.toolAPI.Array;
import de.etas.cebra.toolAPI.Collection;
import de.etas.cebra.toolAPI.NullHandleException;
import de.etas.cebra.toolAPI.OrderedCollection;
import de.etas.cebra.toolAPI.ToolAPI;
import de.etas.types.Identifiable;
import java.util.Hashtable;

public abstract class SmalltalkToolAPI
extends ToolAPI {
    private static ClientSender senderST = ToolClient.initToolSocket("DEFAULT", new ToolEntry(null, Cebra.getDefaultPort("DEFAULT")));

    protected SmalltalkToolAPI() {
        super(senderST);
    }

    protected SmalltalkToolAPI(ClientSender q) {
        super(q);
    }

    public boolean equals(SmalltalkToolAPI item) {
        if (super.equals(item)) {
            return true;
        }
        try {
            InstanceMethodCall imc = this.createInstanceMethodCall("equals:");
            imc.appendParameter(item);
            this.call(imc);
            return imc.getResultBoolean();
        }
        catch (Exception ex) {
            this.handleException(ex);
            return false;
        }
    }

    public void finalize() {
        try {
            this.removeObject(this);
        }
        catch (Exception exception) {}
    }

    public final boolean[] getBooleanFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultBooleanArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final byte[] getBytesFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultByteArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final char[] getCharacterFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultCharacterArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final String getClassName(Identifiable handle) {
        if (this.nullHandle()) {
            return null;
        }
        if (handle.nullHandle()) {
            return "null";
        }
        try {
            ControlMessageCall msg = this.createControlMessageCall("className:");
            msg.appendParameter(handle);
            this.call(msg);
            return msg.getResultString();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final double[] getDoubleFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultDoubleArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final float[] getFloatFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultFloatArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final int[] getIntegerFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultIntegerArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final Object[] getLocalObjectsFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultLocalObjectArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final long[] getLongFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultLongArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final Object[] getObjectsFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultObjectArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    protected Identifiable getPoint(int x, int y) {
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Point", "x:y:");
            cmc.appendParameter(x);
            cmc.appendParameter(y);
            this.call(cmc);
            return cmc.getResultRemoteObject();
        }
        catch (Exception e) {
            this.logEntry(String.valueOf(this.getClass().getName()) + ".getPoint(): failed -> APIError: " + e);
            return null;
        }
    }

    public final Hashtable getRemoteHashtable(Identifiable obj) {
        Hashtable<Object, Object> ergeb = new Hashtable<Object, Object>();
        try {
            ControlMessageCall msg = this.createControlMessageCall("serialize:");
            msg.appendParameter(obj);
            this.call(msg);
            Object[] entries = msg.getResultObjectArray();
            int i = 0;
            while (i < entries.length) {
                ergeb.put(entries[i], entries[i + 1]);
                i += 2;
            }
        }
        catch (Exception exception) {
            return null;
        }
        return ergeb;
    }

    protected final Identifiable[] getRemoteObjectsFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultRemoteObjectArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final short[] getShortFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultShortArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final String[] getStringsFromCollection(Collection coll) {
        if (coll == null) {
            return null;
        }
        try {
            InstanceMethodCall imc = new InstanceMethodCall(coll, "size", this);
            this.call(imc);
            int size = imc.getResultInteger();
            if (size > 200) {
                String[] result = new String[size];
                int i = 0;
                while (i < size) {
                    imc = new InstanceMethodCall(coll, "at:", this);
                    imc.appendParameter(i + 1);
                    this.call(imc);
                    result[i] = imc.getResultString();
                    ++i;
                }
                return result;
            }
            ControlMessageCall cmc = this.createControlMessageCall("serialize:");
            cmc.appendParameter(coll);
            this.call(cmc);
            return cmc.getResultStringArray();
        }
        catch (Exception exception) {
            return null;
        }
    }

    protected boolean isXXX(Identifiable id, String s) {
        try {
            InstanceMethodCall imc = new InstanceMethodCall(id, "is" + s, this);
            this.call(imc);
            return imc.getResultBoolean();
        }
        catch (ErrorResultException ex) {
            this.logEntry(String.valueOf(this.getClass().getName()) + ".is" + s + "() failed due to an API error. " + ex);
        }
        catch (Exception exception) {
            this.logEntry(String.valueOf(this.getClass().getName()) + ".is" + s + "() failed.");
        }
        return false;
    }

    protected boolean isXXX(String s) {
        try {
            InstanceMethodCall imc = this.createInstanceMethodCall("is" + s);
            this.call(imc);
            return imc.getResultBoolean();
        }
        catch (NullHandleException nullHandleException) {
            return false;
        }
        catch (ErrorResultException ex) {
            this.logEntry(String.valueOf(this.getClass().getName()) + ".is" + s + "() failed due to an API error. " + ex);
        }
        catch (Exception exception) {
            this.logEntry(String.valueOf(this.getClass().getName()) + ".is" + s + "() failed.");
        }
        return false;
    }

    public boolean performIsMethod(Identifiable id, String s) {
        try {
            InstanceMethodCall imc = new InstanceMethodCall(id, "is" + s, this);
            this.call(imc);
            return imc.getResultBoolean();
        }
        catch (ErrorResultException ex) {
            this.logEntry(String.valueOf(this.getClass().getName()) + ".is" + s + "() failed due to an API error. " + ex);
        }
        catch (Exception exception) {
            this.logEntry(String.valueOf(this.getClass().getName()) + ".is" + s + "() failed.");
        }
        return false;
    }

    protected boolean registerObjectInSmalltalk(Object obj) {
        try {
            InstanceMethodCall imc = this.createInstanceMethodCall("registerObject:");
            imc.appendParameter(obj);
            this.call(imc);
            return imc.getResultBoolean();
        }
        catch (Exception e) {
            this.logEntry(String.valueOf(this.getClass().getName()) + ".registerObjectInSmalltalk(): failed -> APIError: " + e);
            return false;
        }
    }

    public final Array setArrayFromValues(byte[] v) {
        Array obj = null;
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Array", "new:");
            cmc.appendParameter(v.length);
            this.call(cmc);
            obj = new Array(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameter(v);
            this.call(mc);
            cmc.getResultRemoteObject();
        }
        catch (Exception exception) {
            return null;
        }
        return obj;
    }

    public final Array setArrayFromValues(char[] v) {
        Array obj = null;
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Array", "new:");
            cmc.appendParameter(v.length);
            this.call(cmc);
            obj = new Array(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
        }
        catch (Exception exception) {
            return null;
        }
        return obj;
    }

    public final Array setArrayFromValues(double[] v) {
        Array obj = null;
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Array", "new:");
            cmc.appendParameter(v.length);
            this.call(cmc);
            obj = new Array(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
        }
        catch (Exception exception) {
            return null;
        }
        return obj;
    }

    public final Array setArrayFromValues(float[] v) {
        Array obj = null;
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Array", "new:");
            cmc.appendParameter(v.length);
            this.call(cmc);
            obj = new Array(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
        }
        catch (Exception exception) {
            return null;
        }
        return obj;
    }

    public final Array setArrayFromValues(int[] v) {
        Array obj = null;
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Array", "new:");
            cmc.appendParameter(v.length);
            this.call(cmc);
            obj = new Array(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
        }
        catch (Exception exception) {
            return null;
        }
        return obj;
    }

    public final Array setArrayFromValues(long[] v) {
        Array obj = null;
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Array", "new:");
            cmc.appendParameter(v.length);
            this.call(cmc);
            obj = new Array(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
        }
        catch (Exception exception) {
            return null;
        }
        return obj;
    }

    public final Array setArrayFromValues(Identifiable[] v) {
        Array obj = null;
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Array", "new:");
            cmc.appendParameter(v.length);
            this.call(cmc);
            obj = new Array(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
        }
        catch (Exception exception) {
            return null;
        }
        return obj;
    }

    public final Array setArrayFromValues(Object[] v) {
        Array obj = null;
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Array", "new:");
            cmc.appendParameter(v.length);
            this.call(cmc);
            obj = new Array(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
        }
        catch (Exception exception) {
            return null;
        }
        return obj;
    }

    public final Array setArrayFromValues(String[] v) {
        Array obj = null;
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Array", "new:");
            cmc.appendParameter(v.length);
            this.call(cmc);
            obj = new Array(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
        }
        catch (Exception exception) {
            return null;
        }
        return obj;
    }

    public final Array setArrayFromValues(short[] v) {
        Array obj = null;
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Array", "new:");
            cmc.appendParameter(v.length);
            this.call(cmc);
            obj = new Array(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
        }
        catch (Exception exception) {
            return null;
        }
        return obj;
    }

    public final Array setArrayFromValues(boolean[] v) {
        Array obj = null;
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("Array", "new:");
            cmc.appendParameter(v.length);
            this.call(cmc);
            obj = new Array(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
        }
        catch (Exception exception) {
            return null;
        }
        return obj;
    }

    public final OrderedCollection setOrderedCollectionFromValues(byte[] v) {
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            OrderedCollection obj = new OrderedCollection(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameter(v);
            this.call(mc);
            cmc.getResultRemoteObject();
            return obj;
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final OrderedCollection setOrderedCollectionFromValues(char[] v) {
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            OrderedCollection obj = new OrderedCollection(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
            return obj;
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final OrderedCollection setOrderedCollectionFromValues(double[] v) {
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            OrderedCollection obj = new OrderedCollection(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
            return obj;
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final OrderedCollection setOrderedCollectionFromValues(float[] v) {
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            OrderedCollection obj = new OrderedCollection(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
            return obj;
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final OrderedCollection setOrderedCollectionFromValues(int[] v) {
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            OrderedCollection obj = new OrderedCollection(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
            return obj;
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final OrderedCollection setOrderedCollectionFromValues(long[] v) {
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            OrderedCollection obj = new OrderedCollection(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
            return obj;
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final OrderedCollection setOrderedCollectionFromValues(Identifiable[] v) {
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            OrderedCollection obj = new OrderedCollection(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
            return obj;
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final OrderedCollection setOrderedCollectionFromValues(Object[] v) {
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            OrderedCollection obj = new OrderedCollection(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
            return obj;
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final OrderedCollection setOrderedCollectionFromValues(String[] v) {
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            OrderedCollection obj = new OrderedCollection(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
            return obj;
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final OrderedCollection setOrderedCollectionFromValues(short[] v) {
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            OrderedCollection obj = new OrderedCollection(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
            return obj;
        }
        catch (Exception exception) {
            return null;
        }
    }

    public final OrderedCollection setOrderedCollectionFromValues(boolean[] v) {
        if (v == null) {
            return null;
        }
        try {
            ClassMethodCall cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            OrderedCollection obj = new OrderedCollection(this, cmc.getResultRemoteObject());
            ControlMessageCall mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(v);
            this.call(mc);
            cmc.getResultRemoteObject();
            return obj;
        }
        catch (Exception exception) {
            return null;
        }
    }

    /*
     * Unable to fully structure code
     */
    protected final OrderedCollection vectorToCollectionPoints(int[] x, int[] y) {
        obj = null;
        if (x.length != y.length) {
            return null;
        }
        if (x.length == 0) {
            return null;
        }
        try {
            cmc = this.createClassMethodCall("OrderedCollection", "new");
            this.call(cmc);
            obj = new OrderedCollection(this, cmc.getResultRemoteObject());
        }
        catch (Exception v0) {
            return null;
        }
        points = new Identifiable[x.length];
        i = 0;
        while (i < x.length) {
            block10: {
                try {
                    cmc = this.createClassMethodCall("Point", "x:y:");
                    cmc.appendParameter(x[i]);
                    cmc.appendParameter(y[i]);
                    this.call(cmc);
                    points[i] = cmc.getResultRemoteObject();
                    break block10;
                }
                catch (Exception v1) {
                    j = 0;
                    ** while (j < i)
                }
lbl-1000:
                // 1 sources

                {
                    this.removeObject(points[j]);
                    ++j;
                    continue;
                }
lbl30:
                // 1 sources

                this.removeObject(obj);
                return null;
            }
            ++i;
        }
        try {
            mc = this.createControlMessageCall("deserialize:", true);
            mc.appendParameter(obj);
            mc.appendParameters(points);
            this.call(mc);
            mc.getResultRemoteObject();
            return obj;
        }
        catch (Exception v2) {
            return null;
        }
    }
}

