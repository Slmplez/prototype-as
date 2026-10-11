/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.socket.CebraMessage;
import de.etas.cebra.socket.ClassName;
import de.etas.cebra.socket.ControlSequence;
import de.etas.cebra.socket.ErrorHandle;
import de.etas.cebra.socket.ErrorResultException;
import de.etas.cebra.socket.ItemHandle;
import de.etas.cebra.socket.NullResultException;
import de.etas.cebra.socket.WrongResultTypeException;
import de.etas.cebra.toolAPI.Array;
import de.etas.cebra.toolAPI.ToolAPI;
import de.etas.types.Identifiable;

public abstract class MethodCall {
    protected CebraMessage msg = new CebraMessage();
    protected CebraMessage result = new CebraMessage();
    private int numOfArgs = 0;
    private ToolAPI api;

    protected MethodCall(ToolAPI a) {
        this.api = a;
    }

    public void appendParameter() {
        this.msg.catItem();
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(byte[] i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(char[] i) {
        Array arr = this.api.setArrayFromValues(i);
        if (arr == null) {
            return;
        }
        this.msg.catItem(arr);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(double[] i) {
        Array arr = this.api.setArrayFromValues(i);
        if (arr == null) {
            return;
        }
        this.msg.catItem(arr);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(float[] i) {
        Array arr = this.api.setArrayFromValues(i);
        if (arr == null) {
            return;
        }
        this.msg.catItem(arr);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(int[] i) {
        Array arr = this.api.setArrayFromValues(i);
        if (arr == null) {
            return;
        }
        this.msg.catItem(arr);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(long[] i) {
        Array arr = this.api.setArrayFromValues(i);
        if (arr == null) {
            return;
        }
        this.msg.catItem(arr);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(Identifiable[] i) {
        Array arr = this.api.setArrayFromValues(i);
        if (arr == null) {
            return;
        }
        this.msg.catItem(arr);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(Object[] i) {
        Array arr = this.api.setArrayFromValues(i);
        if (arr == null) {
            return;
        }
        this.msg.catItem(arr);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(String[] i) {
        Array arr = this.api.setArrayFromValues(i);
        if (arr == null) {
            return;
        }
        this.msg.catItem(arr);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(short[] i) {
        Array arr = this.api.setArrayFromValues(i);
        if (arr == null) {
            return;
        }
        this.msg.catItem(arr);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(boolean[] i) {
        Array arr = this.api.setArrayFromValues(i);
        if (arr == null) {
            return;
        }
        this.msg.catItem(arr);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(byte i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(char i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(double i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(float i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(int i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(long i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(ClassName i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(ControlSequence i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(ErrorHandle i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(ItemHandle obj) {
        this.msg.catItem(obj);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(Identifiable i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(Object obj) {
        this.msg.catItem(obj);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(String i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(short i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameter(boolean i) {
        this.msg.catItem(i);
        ++this.numOfArgs;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameters(char[] i) {
        int j = 0;
        while (j < i.length) {
            this.msg.catItem(i[j]);
            ++j;
        }
        this.numOfArgs += i.length;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameters(double[] i) {
        int j = 0;
        while (j < i.length) {
            this.msg.catItem(i[j]);
            ++j;
        }
        this.numOfArgs += i.length;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameters(float[] i) {
        int j = 0;
        while (j < i.length) {
            this.msg.catItem(i[j]);
            ++j;
        }
        this.numOfArgs += i.length;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameters(int[] i) {
        int j = 0;
        while (j < i.length) {
            this.msg.catItem(i[j]);
            ++j;
        }
        this.numOfArgs += i.length;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameters(long[] i) {
        int j = 0;
        while (j < i.length) {
            this.msg.catItem(i[j]);
            ++j;
        }
        this.numOfArgs += i.length;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameters(Identifiable[] i) {
        int j = 0;
        while (j < i.length) {
            this.msg.catItem(i[j]);
            ++j;
        }
        this.numOfArgs += i.length;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameters(Object[] i) {
        int j = 0;
        while (j < i.length) {
            this.msg.catItem(i[j]);
            ++j;
        }
        this.numOfArgs += i.length;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameters(String[] i) {
        int j = 0;
        while (j < i.length) {
            this.msg.catItem(i[j]);
            ++j;
        }
        this.numOfArgs += i.length;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameters(short[] i) {
        int j = 0;
        while (j < i.length) {
            this.msg.catItem(i[j]);
            ++j;
        }
        this.numOfArgs += i.length;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public void appendParameters(boolean[] i) {
        int j = 0;
        while (j < i.length) {
            this.msg.catItem(i[j]);
            ++j;
        }
        this.numOfArgs += i.length;
        this.setNumberOfArguments(this.numOfArgs);
    }

    public CebraMessage getMessage() {
        return this.msg;
    }

    public CebraMessage getResult() {
        return this.result;
    }

    public boolean getResultBoolean() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'T': {
                return (Boolean)item.oHandle;
            }
        }
        throw new WrongResultTypeException();
    }

    public boolean[] getResultBooleanArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        return this.result.readBooleanAll();
    }

    public byte getResultByte() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'B': {
                return (Byte)item.oHandle;
            }
        }
        throw new WrongResultTypeException();
    }

    public byte[] getResultByteArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'Y': {
                return (byte[])item.oHandle;
            }
        }
        throw new WrongResultTypeException();
    }

    public char getResultCharacter() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'A': {
                return ((Character)item.oHandle).charValue();
            }
        }
        throw new WrongResultTypeException();
    }

    public char[] getResultCharacterArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        return this.result.readCharacterAll();
    }

    public double getResultDouble() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'D': {
                return (Double)item.oHandle;
            }
        }
        throw new WrongResultTypeException();
    }

    public double[] getResultDoubleArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        return this.result.readDoubleAll();
    }

    public float getResultFloat() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'F': {
                return ((Float)item.oHandle).floatValue();
            }
        }
        throw new WrongResultTypeException();
    }

    public float[] getResultFloatArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        return this.result.readFloatAll();
    }

    public int getResultInteger() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'I': {
                return (Integer)item.oHandle;
            }
        }
        throw new WrongResultTypeException();
    }

    public int[] getResultIntegerArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        return this.result.readIntegerAll();
    }

    public Object getResultLocalObject() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'O': {
                return item.oHandle;
            }
        }
        throw new WrongResultTypeException();
    }

    public Object[] getResultLocalObjectArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        return this.result.readLocalObjectsAll();
    }

    public long getResultLong() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'L': {
                return (Long)item.oHandle;
            }
        }
        throw new WrongResultTypeException();
    }

    public long[] getResultLongArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        return this.result.readLongAll();
    }

    public Object getResultObject() throws NullResultException, ErrorResultException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
        }
        return item.oHandle;
    }

    public Object[] getResultObjectArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        return this.result.readObjectAll();
    }

    public Identifiable getResultRemoteObject() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'R': {
                return (Identifiable)item.oHandle;
            }
        }
        throw new WrongResultTypeException();
    }

    public Identifiable[] getResultRemoteObjectArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        return this.result.readRemoteObjectsAll();
    }

    public short getResultShort() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'S': {
                return ((Integer)item.oHandle).shortValue();
            }
        }
        throw new WrongResultTypeException();
    }

    public short[] getResultShortArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        return this.result.readShortAll();
    }

    public String getResultString() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'Z': {
                return (String)item.oHandle;
            }
        }
        throw new WrongResultTypeException();
    }

    public String[] getResultStringArray() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        return this.result.readStringsAll();
    }

    public void getResultVoid() throws NullResultException, ErrorResultException, WrongResultTypeException {
        if (this.result == null) {
            throw new NullResultException();
        }
        if (!this.result.reset()) {
            throw new ErrorResultException(new ErrorHandle(920, "No connection"));
        }
        ItemHandle item = this.result.readNext();
        switch (item.type) {
            case 'E': {
                throw new ErrorResultException((ErrorHandle)item.oHandle);
            }
            case 'V': {
                return;
            }
        }
        throw new WrongResultTypeException();
    }

    private void setNumberOfArguments(int i) {
        this.msg.message.setElementAt(new Integer(i), 2);
    }
}

