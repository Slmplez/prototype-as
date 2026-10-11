/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.ClassName;
import de.etas.cebra.socket.ControlSequence;
import de.etas.cebra.socket.ErrorHandle;
import de.etas.cebra.socket.Identifier;
import de.etas.cebra.socket.ItemHandle;
import de.etas.cebra.socket.ObjectTable;
import de.etas.cebra.socket.WrongResultTypeException;
import de.etas.types.Identifiable;
import de.etas.types.RemoteHandle;
import java.util.Stack;
import java.util.Vector;

final class CebraMessage
implements Identifiable {
    private Stack formatString = new Stack();
    private Stack formatLength = new Stack();
    Stack message = new Stack();
    long messageID = 0L;
    private boolean registered = false;
    private char lastItemType = '\u0000';
    private int lastItemCount = 0;
    private int lengthHeader = 0;
    private int lengthBody = 0;
    private int numOfItems = 0;
    private int currentItem = 0;
    private int currentAnzahl = 0;
    private int currentMessage = 0;
    private int elementAnzahl;
    private char elementType;

    CebraMessage() {
    }

    final void aliveMessage() {
        this.catItem(new ControlSequence('A'));
        this.catItem("alive");
        this.catItem(0);
    }

    CebraMessage answer() {
        CebraMessage ergeb = new CebraMessage();
        ergeb.setIdentifier(this);
        return ergeb;
    }

    private void appendHeader(char c, int l) {
        if (this.lastItemType == c) {
            ++this.lastItemCount;
        } else {
            this.flush();
            this.lastItemType = c;
            ++this.lastItemCount;
        }
        this.lengthBody += l;
    }

    byte[] asByteStream() {
        this.flush();
        int i = 5 * this.lengthHeader + 11;
        int j = 5 * this.lengthHeader + this.lengthBody + 16;
        int x = this.formatString.size();
        int v = this.formatLength.size();
        int w = this.message.size();
        byte[] ergeb = new byte[16 + 5 * this.lengthHeader + this.lengthBody];
        CebraMessage.convertLongToBytes(this.messageID, ergeb, 0);
        CebraMessage.convertIntToBytes(this.lengthHeader, ergeb, 8);
        CebraMessage.convertIntToBytes(this.lengthBody, ergeb, 12);
        while (x > 0) {
            Character c = (Character)this.formatString.elementAt(--x);
            Integer k = (Integer)this.formatLength.elementAt(--v);
            int anzahl = k;
            ergeb[i] = (byte)c.charValue();
            CebraMessage.convertIntToBytes(anzahl, ergeb, i + 1);
            switch (Character.toUpperCase(c.charValue())) {
                case 'A': {
                    int u = 0;
                    while (u < anzahl) {
                        Character as = (Character)this.message.elementAt(--w);
                        ergeb[--j] = (byte)as.charValue();
                        ++u;
                    }
                    break;
                }
                case 'Z': {
                    j -= anzahl;
                    String z = (String)this.message.elementAt(--w);
                    byte[] z_help = z.getBytes();
                    int z_c = 0;
                    while (z_c < z_help.length) {
                        ergeb[j + z_c] = z_help[z_c];
                        ++z_c;
                    }
                    break;
                }
                case 'X': {
                    ControlSequence cs = (ControlSequence)this.message.elementAt(--w);
                    ergeb[--j] = (byte)cs.controlCharacter;
                    break;
                }
                case 'B': {
                    int u = 0;
                    while (u < anzahl) {
                        Byte b = (Byte)this.message.elementAt(--w);
                        ergeb[--j] = b;
                        ++u;
                    }
                    break;
                }
                case 'Y': {
                    byte[] y = (byte[])this.message.elementAt(--w);
                    int u = anzahl - 1;
                    while (u >= 0) {
                        ergeb[--j] = y[u];
                        --u;
                    }
                    break;
                }
                case 'T': {
                    int u = 0;
                    while (u < anzahl) {
                        Boolean t;
                        ergeb[--j] = (t = (Boolean)this.message.elementAt(--w)) != false ? (byte)1 : 0;
                        ++u;
                    }
                    break;
                }
                case 'C': {
                    j -= anzahl;
                    String zz = ((ClassName)this.message.elementAt((int)(--w))).name;
                    byte[] zz_help = zz.getBytes();
                    int zz_c = 0;
                    while (zz_c < zz_help.length) {
                        ergeb[j + zz_c] = zz_help[zz_c];
                        ++zz_c;
                    }
                    break;
                }
                case 'D': {
                    int u = 0;
                    while (u < anzahl) {
                        Double d = (Double)this.message.elementAt(--w);
                        CebraMessage.convertDoubleToBytes(d, ergeb, j -= 8);
                        ++u;
                    }
                    break;
                }
                case 'E': {
                    ErrorHandle errhnd = (ErrorHandle)this.message.elementAt(--w);
                    String errmsg = errhnd.errmsg;
                    j -= anzahl;
                    byte[] err_help = errmsg.getBytes();
                    int z_c = 0;
                    while (z_c < err_help.length) {
                        ergeb[j + z_c] = err_help[z_c];
                        ++z_c;
                    }
                    CebraMessage.convertIntToBytes(errhnd.errcode, ergeb, j -= 4);
                    break;
                }
                case 'F': {
                    int u = 0;
                    while (u < anzahl) {
                        Float f = (Float)this.message.elementAt(--w);
                        CebraMessage.convertFloatToBytes(f.floatValue(), ergeb, j -= 4);
                        ++u;
                    }
                    break;
                }
                case 'I': {
                    int u = 0;
                    while (u < anzahl) {
                        Integer ff = (Integer)this.message.elementAt(--w);
                        CebraMessage.convertIntToBytes(ff, ergeb, j -= 4);
                        ++u;
                    }
                    break;
                }
                case 'L': {
                    int u = 0;
                    while (u < anzahl) {
                        Long l = (Long)this.message.elementAt(--w);
                        CebraMessage.convertLongToBytes(l, ergeb, j -= 8);
                        ++u;
                    }
                    break;
                }
                case 'S': {
                    int u = 0;
                    while (u < anzahl) {
                        Short s = (Short)this.message.elementAt(--w);
                        CebraMessage.convertShortToBytes(s, ergeb, j -= 2);
                        ++u;
                    }
                    break;
                }
                case 'O': {
                    int u = 0;
                    while (u < anzahl) {
                        Identifiable o = (Identifiable)this.message.elementAt(--w);
                        CebraMessage.convertLongToBytes(o.getIdentifier(), ergeb, j -= 8);
                        ++u;
                    }
                    break;
                }
                case 'R': {
                    int u = 0;
                    while (u < anzahl) {
                        Identifiable r = (Identifiable)this.message.elementAt(--w);
                        CebraMessage.convertLongToBytes(r.getIdentifier(), ergeb, j -= 8);
                        ++u;
                    }
                    break;
                }
            }
            i -= 5;
        }
        return ergeb;
    }

    void buildBody(byte[] msg) {
        int j = 0;
        int i = 0;
        while (i < this.lengthHeader) {
            Character c = (Character)this.formatString.elementAt(i);
            char cv = c.charValue();
            Integer k = (Integer)this.formatLength.elementAt(i);
            int anzahl = k;
            switch (cv) {
                case 'A': {
                    String buf = new String(msg, j, anzahl);
                    int n = 0;
                    while (n < anzahl) {
                        Character as = new Character(buf.charAt(n));
                        this.message.push(as);
                        ++n;
                    }
                    j += anzahl;
                    break;
                }
                case 'Z': {
                    String str = new String(msg, j, anzahl);
                    this.message.push(str);
                    j += anzahl;
                    break;
                }
                case 'X': {
                    String cs = new String(msg, j, 1);
                    ControlSequence ccs = new ControlSequence(cs.charAt(0));
                    this.message.push(ccs);
                    ++j;
                    break;
                }
                case 'C': {
                    ClassName cl = new ClassName(new String(msg, j, anzahl));
                    this.message.push(cl);
                    j += anzahl;
                    break;
                }
                case 'E': {
                    ErrorHandle errhnd = new ErrorHandle(CebraMessage.convertBytesToInt(msg, j), new String(msg, j + 4, anzahl));
                    this.message.push(errhnd);
                    j += 4 + anzahl;
                    break;
                }
                case 'B': {
                    int n = 0;
                    while (n < anzahl) {
                        Byte b = new Byte(msg[j]);
                        ++j;
                        this.message.push(b);
                        ++n;
                    }
                    break;
                }
                case 'Y': {
                    byte[] y = new byte[anzahl];
                    int n = 0;
                    while (n < anzahl) {
                        y[n] = msg[j];
                        ++j;
                        ++n;
                    }
                    this.message.push(y);
                    break;
                }
                case 'T': {
                    int n = 0;
                    while (n < anzahl) {
                        Boolean t = new Boolean(msg[j] > 0);
                        ++j;
                        this.message.push(t);
                        ++n;
                    }
                    break;
                }
                case 'D': {
                    int n = 0;
                    while (n < anzahl) {
                        Double d = new Double(CebraMessage.convertBytesToDouble(msg, j));
                        this.message.push(d);
                        j += 8;
                        ++n;
                    }
                    break;
                }
                case 'F': {
                    int n = 0;
                    while (n < anzahl) {
                        Float f = new Float(CebraMessage.convertBytesToFloat(msg, j));
                        this.message.push(f);
                        j += 4;
                        ++n;
                    }
                    break;
                }
                case 'I': {
                    int n = 0;
                    while (n < anzahl) {
                        Integer ff = new Integer(CebraMessage.convertBytesToInt(msg, j));
                        this.message.push(ff);
                        j += 4;
                        ++n;
                    }
                    break;
                }
                case 'L': {
                    int n = 0;
                    while (n < anzahl) {
                        Long l = new Long(CebraMessage.convertBytesToLong(msg, j));
                        this.message.push(l);
                        j += 8;
                        ++n;
                    }
                    break;
                }
                case 'S': {
                    int n = 0;
                    while (n < anzahl) {
                        Short s = new Short(CebraMessage.convertBytesToShort(msg, j));
                        this.message.push(s);
                        j += 2;
                        ++n;
                    }
                    break;
                }
                case 'O': {
                    int n = 0;
                    while (n < anzahl) {
                        Identifier id = new Identifier();
                        id.setIdentifier(CebraMessage.convertBytesToLong(msg, j));
                        Object o = ObjectTable.getFromObjectTable(id);
                        this.message.push(o);
                        j += 8;
                        ++n;
                    }
                    break;
                }
                case 'R': {
                    int n = 0;
                    while (n < anzahl) {
                        RemoteHandle r = new RemoteHandle();
                        r.setIdentifier(CebraMessage.convertBytesToLong(msg, j));
                        r.setRegistered(true);
                        this.message.push(r);
                        j += 8;
                        ++n;
                    }
                    break;
                }
            }
            ++i;
        }
    }

    void buildHeader(char c, int i) {
        this.formatString.push(new Character(c));
        this.formatLength.push(new Integer(i));
        ++this.lengthHeader;
        switch (c) {
            case 'C': 
            case 'X': 
            case 'Y': 
            case 'Z': {
                ++this.numOfItems;
                this.lengthBody += i;
                break;
            }
            case 'A': 
            case 'B': 
            case 'T': {
                this.numOfItems += i;
                this.lengthBody += i;
                break;
            }
            case 'E': {
                ++this.numOfItems;
                this.lengthBody += 4 + i;
                break;
            }
            case 'F': 
            case 'I': {
                this.numOfItems += i;
                this.lengthBody += 4 * i;
                break;
            }
            case 'D': 
            case 'L': 
            case 'O': 
            case 'R': {
                this.numOfItems += i;
                this.lengthBody += 8 * i;
                break;
            }
            case 'S': {
                this.numOfItems += i;
                this.lengthBody += 2 * i;
                break;
            }
            case 'V': {
                this.numOfItems += i;
            }
        }
    }

    final void catItem() {
        this.appendHeader('V', 0);
    }

    final void catItem(byte[] i) {
        this.flush();
        ++this.numOfItems;
        ++this.lengthHeader;
        this.lengthBody += i.length;
        this.formatString.push(new Character('Y'));
        this.formatLength.push(new Integer(i.length));
        this.message.push(i);
    }

    final void catItem(byte i) {
        this.appendHeader('B', 1);
        this.message.push(new Byte(i));
    }

    final void catItem(char i) {
        this.appendHeader('C', 1);
        this.message.push(new Character(i));
    }

    final void catItem(double i) {
        if (i == Double.POSITIVE_INFINITY) {
            this.catItem(RemoteHandle.POSITIVE_INFINITY);
            return;
        }
        if (i == Double.NEGATIVE_INFINITY) {
            this.catItem(RemoteHandle.NEGATIVE_INFINITY);
            return;
        }
        this.appendHeader('D', 8);
        this.message.push(new Double(i));
    }

    final void catItem(float i) {
        if (i == Float.POSITIVE_INFINITY) {
            this.catItem(RemoteHandle.POSITIVE_INFINITY);
            return;
        }
        if (i == Float.NEGATIVE_INFINITY) {
            this.catItem(RemoteHandle.NEGATIVE_INFINITY);
            return;
        }
        this.appendHeader('F', 4);
        this.message.push(new Float(i));
    }

    final void catItem(int i) {
        this.appendHeader('I', 4);
        this.message.push(new Integer(i));
    }

    final void catItem(long i) {
        this.appendHeader('L', 8);
        this.message.push(new Long(i));
    }

    final void catItem(ClassName i) {
        this.flush();
        ++this.numOfItems;
        ++this.lengthHeader;
        this.lengthBody += i.name.length();
        this.formatString.push(new Character('C'));
        this.formatLength.push(new Integer(i.name.length()));
        this.message.push(i);
    }

    final void catItem(ControlSequence i) {
        this.appendHeader('X', 1);
        this.message.push(i);
    }

    final void catItem(ErrorHandle i) {
        this.flush();
        ++this.numOfItems;
        this.lengthBody += i.errmsg.length() + 4;
        ++this.lengthHeader;
        this.formatString.push(new Character('E'));
        this.formatLength.push(new Integer(i.errmsg.length()));
        this.message.push(i);
    }

    final void catItem(ItemHandle item) {
        if (item == null) {
            this.catObject(null);
            return;
        }
        switch (item.type) {
            case 'A': {
                this.catItem(((Character)item.oHandle).charValue());
                break;
            }
            case 'B': {
                this.catItem((Byte)item.oHandle);
                break;
            }
            case 'C': {
                this.catItem((ClassName)item.oHandle);
                break;
            }
            case 'D': {
                this.catItem((Double)item.oHandle);
                break;
            }
            case 'E': {
                this.catItem((ErrorHandle)item.oHandle);
                break;
            }
            case 'F': {
                this.catItem(((Float)item.oHandle).floatValue());
                break;
            }
            case 'I': {
                this.catItem((Integer)item.oHandle);
                break;
            }
            case 'L': {
                this.catItem((Long)item.oHandle);
                break;
            }
            case 'O': 
            case 'R': {
                this.catItem((Identifiable)item.oHandle);
                break;
            }
            case 'S': {
                this.catItem((short)((Integer)item.oHandle).intValue());
                break;
            }
            case 'T': {
                this.catItem((Boolean)item.oHandle);
                break;
            }
            case 'V': {
                this.catItem();
                break;
            }
            case 'X': {
                this.catItem((ControlSequence)item.oHandle);
                break;
            }
            case 'Z': {
                this.catItem((String)item.oHandle);
            }
        }
    }

    final void catItem(Identifiable i) {
        char senderFormat;
        Identifiable msg;
        if (i == null) {
            msg = RemoteHandle.Null;
            senderFormat = 'O';
        } else if (i instanceof RemoteHandle) {
            msg = i;
            senderFormat = 'O';
        } else {
            msg = ObjectTable.addToObjectTable(i);
            senderFormat = 'R';
        }
        this.appendHeader(senderFormat, 8);
        this.message.push(msg);
    }

    final void catItem(Class c) {
        this.catItem(new ClassName(c.getName()));
    }

    final void catItem(Object i) {
        this.catItem(ObjectTable.addToObjectTable(i));
    }

    final void catItem(String i) {
        this.flush();
        ++this.numOfItems;
        ++this.lengthHeader;
        this.lengthBody += i.length();
        this.formatString.push(new Character('Z'));
        this.formatLength.push(new Integer(i.length()));
        this.message.push(i);
    }

    final void catItem(short i) {
        this.appendHeader('S', 2);
        this.message.push(new Short(i));
    }

    final void catItem(boolean i) {
        this.appendHeader('T', 1);
        this.message.push(new Boolean(i));
    }

    final void catObject(Object i) {
        this.catItem(i);
    }

    final void clear() {
        this.formatString = new Stack();
        this.formatLength = new Stack();
        this.message = new Stack();
        this.lengthHeader = 0;
        this.lengthBody = 0;
        this.numOfItems = 0;
        this.currentItem = 0;
        this.currentMessage = 0;
        this.currentAnzahl = 0;
        this.lastItemCount = 0;
        this.lastItemType = '\u0000';
    }

    private static double convertBytesToDouble(byte[] b, int start) {
        return Double.longBitsToDouble(CebraMessage.convertBytesToLong(b, start));
    }

    private static double convertBytesToFloat(byte[] b, int start) {
        return Float.intBitsToFloat(CebraMessage.convertBytesToInt(b, start));
    }

    static int convertBytesToInt(byte[] b, int start) {
        int ergeb = 0;
        int j = start + 3;
        int i = 3;
        while (i > 0) {
            ergeb |= b[j] & 0xFF;
            ergeb <<= 8;
            --j;
            --i;
        }
        return ergeb |= b[j] & 0xFF;
    }

    static long convertBytesToLong(byte[] b, int start) {
        long ergeb = 0L;
        int j = start + 7;
        int i = 7;
        while (i > 0) {
            ergeb |= (long)(b[j] & 0xFF);
            ergeb <<= 8;
            --j;
            --i;
        }
        return ergeb |= (long)(b[j] & 0xFF);
    }

    private static short convertBytesToShort(byte[] b, int start) {
        short ergeb = 0;
        ergeb = (short)(ergeb | b[start + 1]);
        ergeb = (short)(ergeb << 8);
        ergeb = (short)(ergeb | (short)(b[start] & 0xFF));
        return ergeb;
    }

    private static void convertDoubleToBytes(double d, byte[] ergeb, int start) {
        CebraMessage.convertLongToBytes(Double.doubleToLongBits(d), ergeb, start);
    }

    private static void convertFloatToBytes(float f, byte[] ergeb, int start) {
        CebraMessage.convertIntToBytes(Float.floatToIntBits(f), ergeb, start);
    }

    private static void convertIntToBytes(int v, byte[] ergeb, int start) {
        int puffer = v;
        int j = start;
        int i = 0;
        while (i < 4) {
            ergeb[j] = (byte)(puffer & 0xFF);
            puffer >>= 8;
            ++j;
            ++i;
        }
    }

    private static void convertLongToBytes(long v, byte[] ergeb, int start) {
        long puffer = v;
        int j = start;
        int i = 0;
        while (i < 8) {
            ergeb[j] = (byte)(puffer & 0xFFL);
            puffer >>>= 8;
            ++j;
            ++i;
        }
    }

    private static void convertShortToBytes(short v, byte[] ergeb, int start) {
        short puffer = v;
        ergeb[start] = (byte)puffer;
        puffer = (short)(puffer >> 8);
        ergeb[start + 1] = (byte)puffer;
    }

    final void copy(CebraMessage msg) {
        this.formatString = msg.formatString;
        this.formatLength = msg.formatLength;
        this.message = msg.message;
        this.messageID = msg.messageID;
        this.lengthHeader = msg.lengthHeader;
        this.numOfItems = msg.numOfItems;
        this.lengthBody = msg.lengthBody;
    }

    private void flush() {
        if (this.lastItemCount == 0) {
            return;
        }
        this.formatString.push(new Character(this.lastItemType));
        this.formatLength.push(new Integer(this.lastItemCount));
        ++this.lengthHeader;
        this.numOfItems += this.lastItemCount;
        this.lastItemCount = 0;
        this.lastItemType = '\u0000';
    }

    public long getIdentifier() {
        return this.messageID;
    }

    final boolean isControlMessage() {
        ItemHandle item = this.readItem(0);
        if (item == null) {
            return false;
        }
        return item.type == 'X';
    }

    final boolean isEmptyMessage() {
        ItemHandle item = this.readItem(0);
        return item == null;
    }

    final boolean isErrorMessage() {
        ItemHandle item = this.readItem(0);
        if (item == null) {
            return false;
        }
        return item.type == 'E';
    }

    final boolean isHandshakeMessage() {
        return this.messageID != 0L;
    }

    final boolean isQuitMessage() {
        if (this.nullHandle()) {
            return true;
        }
        ItemHandle item = this.readItem(0);
        if (item == null) {
            return false;
        }
        if (item.type != 'X') {
            return false;
        }
        item = this.readItem(1);
        if (item == null) {
            return false;
        }
        return ((String)item.oHandle).equals("quit");
    }

    public final boolean isRegistered() {
        return this.registered;
    }

    public final boolean nullHandle() {
        return this.messageID == 0L;
    }

    static final CebraMessage quitMessage() {
        CebraMessage ergeb = new CebraMessage();
        ergeb.catItem(new ControlSequence('Q'));
        ergeb.catItem("quit");
        ergeb.catItem(0);
        return ergeb;
    }

    final boolean[] readBooleanAll() throws WrongResultTypeException {
        if (this.lengthHeader == 0) {
            return new boolean[0];
        }
        if (((Character)this.formatString.elementAt(0)).charValue() != 'T') {
            throw new WrongResultTypeException();
        }
        int anzahl = (Integer)this.formatLength.elementAt(0);
        boolean[] ergeb = new boolean[anzahl];
        int i = 0;
        while (i < anzahl) {
            ergeb[i] = (Boolean)this.message.elementAt(i);
            ++i;
        }
        return ergeb;
    }

    final byte[] readByteAll() throws WrongResultTypeException {
        if (this.lengthHeader == 0) {
            return new byte[0];
        }
        if (((Character)this.formatString.elementAt(0)).charValue() == 'Y') {
            throw new WrongResultTypeException();
        }
        if (((Character)this.formatString.elementAt(0)).charValue() != 'B') {
            throw new WrongResultTypeException();
        }
        int anzahl = (Integer)this.formatLength.elementAt(0);
        byte[] ergeb = new byte[anzahl];
        int i = 0;
        while (i < anzahl) {
            ergeb[i] = (Byte)this.message.elementAt(i);
            ++i;
        }
        return ergeb;
    }

    final char[] readCharacterAll() throws WrongResultTypeException {
        if (this.lengthHeader == 0) {
            return new char[0];
        }
        if (((Character)this.formatString.elementAt(0)).charValue() != 'A') {
            throw new WrongResultTypeException();
        }
        int anzahl = (Integer)this.formatLength.elementAt(0);
        char[] ergeb = new char[anzahl];
        int i = 0;
        while (i < anzahl) {
            ergeb[i] = ((Character)this.message.elementAt(i)).charValue();
            ++i;
        }
        return ergeb;
    }

    final double[] readDoubleAll() throws WrongResultTypeException {
        try {
            if (this.lengthHeader == 0) {
                return new double[0];
            }
            int anzahl = (Integer)this.formatLength.elementAt(0);
            double[] ergeb = new double[anzahl];
            int i = 0;
            while (i < anzahl) {
                ergeb[i] = ((Number)this.message.elementAt(i)).doubleValue();
                ++i;
            }
            return ergeb;
        }
        catch (Throwable throwable) {
            throw new WrongResultTypeException();
        }
    }

    final float[] readFloatAll() throws WrongResultTypeException {
        try {
            if (this.lengthHeader == 0) {
                return new float[0];
            }
            int anzahl = (Integer)this.formatLength.elementAt(0);
            float[] ergeb = new float[anzahl];
            int i = 0;
            while (i < anzahl) {
                ergeb[i] = ((Number)this.message.elementAt(i)).floatValue();
                ++i;
            }
            return ergeb;
        }
        catch (Throwable throwable) {
            throw new WrongResultTypeException();
        }
    }

    final int[] readIntegerAll() throws WrongResultTypeException {
        if (this.lengthHeader == 0) {
            return new int[0];
        }
        if (((Character)this.formatString.elementAt(0)).charValue() != 'I') {
            throw new WrongResultTypeException();
        }
        int anzahl = (Integer)this.formatLength.elementAt(0);
        int[] ergeb = new int[anzahl];
        int i = 0;
        while (i < anzahl) {
            ergeb[i] = (Integer)this.message.elementAt(i);
            ++i;
        }
        return ergeb;
    }

    final ItemHandle readItem(int position) {
        if (position < 0) {
            return null;
        }
        if (position >= this.numOfItems) {
            return null;
        }
        ItemHandle ergeb = new ItemHandle();
        int i = 0;
        int j = 0;
        int k = 0;
        int c = 86;
        int anzahl = 0;
        while (i <= position) {
            c = ((Character)this.formatString.elementAt(j)).charValue();
            anzahl = (Integer)this.formatLength.elementAt(j);
            ++j;
            switch (c) {
                case 67: 
                case 69: 
                case 89: 
                case 90: {
                    ++i;
                    break;
                }
                case 86: {
                    k += anzahl;
                }
                case 65: 
                case 66: 
                case 68: 
                case 70: 
                case 73: 
                case 76: 
                case 79: 
                case 82: 
                case 83: 
                case 84: 
                case 88: {
                    i += anzahl;
                }
            }
        }
        if (c == 86) {
            ergeb.oHandle = null;
            ergeb.type = (char)86;
        } else {
            ergeb.oHandle = this.message.elementAt(position - k);
            ergeb.type = (char)c;
        }
        return ergeb;
    }

    final Object[] readLocalObjectsAll() throws WrongResultTypeException {
        if (this.lengthHeader == 0) {
            return new Object[0];
        }
        if (((Character)this.formatString.elementAt(0)).charValue() != 'O') {
            throw new WrongResultTypeException();
        }
        int anzahl = (Integer)this.formatLength.elementAt(0);
        Object[] ergeb = new Object[anzahl];
        int i = 0;
        while (i < anzahl) {
            ergeb[i] = this.message.elementAt(i);
            ++i;
        }
        return ergeb;
    }

    final long[] readLongAll() throws WrongResultTypeException {
        if (this.lengthHeader == 0) {
            return new long[0];
        }
        if (((Character)this.formatString.elementAt(0)).charValue() != 'L') {
            throw new WrongResultTypeException();
        }
        int anzahl = (Integer)this.formatLength.elementAt(0);
        long[] ergeb = new long[anzahl];
        int i = 0;
        while (i < anzahl) {
            ergeb[i] = (Long)this.message.elementAt(i);
            ++i;
        }
        return ergeb;
    }

    final ItemHandle readNext() {
        if (this.currentItem >= this.lengthHeader) {
            return null;
        }
        if (this.currentItem < 0) {
            return null;
        }
        ItemHandle ergeb = new ItemHandle();
        ergeb.type = this.elementType;
        switch (this.elementType) {
            case 'C': 
            case 'E': 
            case 'M': 
            case 'X': 
            case 'Y': 
            case 'Z': {
                ergeb.oHandle = this.message.elementAt(this.currentMessage);
                ++this.currentMessage;
                ++this.currentItem;
                this.currentAnzahl = 0;
                break;
            }
            case 'A': 
            case 'B': 
            case 'D': 
            case 'F': 
            case 'I': 
            case 'L': 
            case 'O': 
            case 'R': 
            case 'S': 
            case 'T': {
                ergeb.oHandle = this.message.elementAt(this.currentMessage);
                ++this.currentMessage;
                ++this.currentAnzahl;
                if (this.currentAnzahl != this.elementAnzahl) break;
                ++this.currentItem;
                this.currentAnzahl = 0;
                break;
            }
            case 'V': {
                ergeb.oHandle = null;
                ++this.currentAnzahl;
                if (this.currentAnzahl != this.elementAnzahl) break;
                ++this.currentItem;
                this.currentAnzahl = 0;
            }
        }
        if (this.currentItem < this.lengthHeader) {
            this.elementAnzahl = (Integer)this.formatLength.elementAt(this.currentItem);
            this.elementType = ((Character)this.formatString.elementAt(this.currentItem)).charValue();
        }
        return ergeb;
    }

    final Object[] readObjectAll() {
        Object[] ergeb = new Object[this.numOfItems];
        int i = 0;
        while (i < this.numOfItems) {
            ergeb[i] = this.message.elementAt(i);
            ++i;
        }
        return ergeb;
    }

    final Identifiable[] readRemoteObjectsAll() throws WrongResultTypeException {
        if (this.lengthHeader == 0) {
            return new Identifiable[0];
        }
        if (((Character)this.formatString.elementAt(0)).charValue() != 'R') {
            throw new WrongResultTypeException();
        }
        int anzahl = (Integer)this.formatLength.elementAt(0);
        Identifiable[] ergeb = new Identifiable[anzahl];
        int i = 0;
        while (i < anzahl) {
            ergeb[i] = (Identifiable)this.message.elementAt(i);
            ++i;
        }
        return ergeb;
    }

    final short[] readShortAll() throws WrongResultTypeException {
        if (this.lengthHeader == 0) {
            return new short[0];
        }
        if (((Character)this.formatString.elementAt(0)).charValue() != 'S') {
            throw new WrongResultTypeException();
        }
        int anzahl = (Integer)this.formatLength.elementAt(0);
        short[] ergeb = new short[anzahl];
        int i = 0;
        while (i < anzahl) {
            ergeb[i] = ((Integer)this.message.elementAt(i)).shortValue();
            ++i;
        }
        return ergeb;
    }

    final String[] readStringsAll() throws WrongResultTypeException {
        if (this.lengthHeader == 0) {
            return new String[0];
        }
        int i = 0;
        Vector buf = new Vector();
        this.reset();
        while (this.readNext() != null) {
            if (((Character)this.formatString.elementAt(i)).charValue() != 'Z') {
                throw new WrongResultTypeException();
            }
            buf.addElement(this.message.elementAt(i));
            ++i;
        }
        String[] ergeb = new String[buf.size()];
        i = 0;
        while (i < buf.size()) {
            ergeb[i] = (String)buf.elementAt(i);
            ++i;
        }
        return ergeb;
    }

    final boolean reset() {
        this.currentItem = 0;
        this.currentMessage = 0;
        this.currentAnzahl = 0;
        if (!this.formatLength.isEmpty()) {
            this.elementAnzahl = (Integer)this.formatLength.elementAt(this.currentItem);
            this.elementType = ((Character)this.formatString.elementAt(this.currentItem)).charValue();
            return true;
        }
        return false;
    }

    public final void setIdentifier(long id) {
        this.messageID = id;
    }

    public final void setIdentifier(Identifiable id) {
        if (id == null) {
            this.messageID = 0L;
        }
        this.messageID = id.getIdentifier();
    }

    final void setQuitMessage() {
        this.catItem(new ControlSequence('Q'));
        this.catItem("quit");
        this.catItem(0);
    }

    public final void setRegistered(boolean flag) {
        this.registered = flag;
    }

    public String toString() {
        this.flush();
        String s = new String("MessageID: " + this.messageID + Cebra.LF);
        int j = 0;
        int m = 0;
        while (m < this.lengthHeader) {
            Character c = (Character)this.formatString.elementAt(m);
            char cv = c.charValue();
            Integer i = (Integer)this.formatLength.elementAt(m);
            int k = i;
            switch (cv) {
                case 'A': {
                    s = String.valueOf(s) + "<" + k + " character> ";
                    int n = 0;
                    while (n < k) {
                        char as = ((Character)this.message.elementAt(j)).charValue();
                        ++j;
                        s = String.valueOf(s) + as + " ";
                        ++n;
                    }
                    break;
                }
                case 'Z': {
                    s = String.valueOf(s) + "<String> ";
                    String str = (String)this.message.elementAt(j);
                    s = String.valueOf(s) + str;
                    ++j;
                    break;
                }
                case 'B': {
                    s = String.valueOf(s) + "<" + k + " byte> ";
                    int n = 0;
                    while (n < k) {
                        Byte b = (Byte)this.message.elementAt(j);
                        ++j;
                        s = String.valueOf(s) + b.intValue() + " ";
                        ++n;
                    }
                    break;
                }
                case 'Y': {
                    s = String.valueOf(s) + "<byte array size " + k + "> ";
                    byte[] y = (byte[])this.message.elementAt(j);
                    int n = 0;
                    while (n < k) {
                        s = String.valueOf(s) + y[n] + " ";
                        ++n;
                    }
                    break;
                }
                case 'X': {
                    ++j;
                    s = String.valueOf(s) + "<control message>";
                    break;
                }
                case 'T': {
                    s = String.valueOf(s) + "<" + k + " boolean> ";
                    int n = 0;
                    while (n < k) {
                        Boolean t = (Boolean)this.message.elementAt(j);
                        ++j;
                        s = t != false ? String.valueOf(s) + "true " : String.valueOf(s) + "false ";
                        ++n;
                    }
                    break;
                }
                case 'C': {
                    ClassName cl = (ClassName)this.message.elementAt(j);
                    s = String.valueOf(s) + "<class> " + cl.name;
                    ++j;
                    break;
                }
                case 'D': {
                    s = String.valueOf(s) + "<" + k + " double> ";
                    int n = 0;
                    while (n < k) {
                        Double d = (Double)this.message.elementAt(j);
                        ++j;
                        s = String.valueOf(s) + d + " ";
                        ++n;
                    }
                    break;
                }
                case 'E': {
                    ErrorHandle errhnd = (ErrorHandle)this.message.elementAt(j);
                    ++j;
                    s = String.valueOf(s) + "<error> " + errhnd.errcode + " " + errhnd.errmsg;
                    break;
                }
                case 'F': {
                    s = String.valueOf(s) + "<" + k + " float> ";
                    int n = 0;
                    while (n < k) {
                        Float f = (Float)this.message.elementAt(j);
                        ++j;
                        s = String.valueOf(s) + f.floatValue() + " ";
                        ++n;
                    }
                    break;
                }
                case 'I': {
                    s = String.valueOf(s) + "<" + k + " integer> ";
                    int n = 0;
                    while (n < k) {
                        Integer ff = (Integer)this.message.elementAt(j);
                        ++j;
                        s = String.valueOf(s) + ff + " ";
                        ++n;
                    }
                    break;
                }
                case 'L': {
                    s = String.valueOf(s) + "<" + k + " long> ";
                    int n = 0;
                    while (n < k) {
                        Long l = (Long)this.message.elementAt(j);
                        ++j;
                        s = String.valueOf(s) + l + " ";
                        ++n;
                    }
                    break;
                }
                case 'S': {
                    s = String.valueOf(s) + "<" + k + " short> ";
                    int n = 0;
                    while (n < k) {
                        Short ll = (Short)this.message.elementAt(j);
                        ++j;
                        s = String.valueOf(s) + ll + " ";
                        ++n;
                    }
                    break;
                }
                case 'O': {
                    int n = 0;
                    while (n < k) {
                        s = String.valueOf(s) + "<local object>" + this.message.elementAt(j);
                        ++j;
                        ++n;
                    }
                    break;
                }
                case 'R': {
                    int n = 0;
                    while (n < k) {
                        Identifiable r = (Identifiable)this.message.elementAt(j);
                        ++j;
                        s = String.valueOf(s) + "<remote object " + r.getIdentifier() + ">";
                        ++n;
                    }
                    break;
                }
                case 'V': {
                    s = String.valueOf(s) + "<void>";
                }
            }
            s = String.valueOf(s) + Cebra.LF;
            ++m;
        }
        return s;
    }
}

