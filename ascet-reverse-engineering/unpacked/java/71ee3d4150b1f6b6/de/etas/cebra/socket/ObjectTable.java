/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.Identifier;
import de.etas.types.Identifiable;
import java.util.Hashtable;

final class ObjectTable {
    private static Hashtable objectTable = new Hashtable(101);

    private ObjectTable() {
    }

    static final Identifiable addToObjectTable(Identifiable obj) {
        if (obj == null) {
            return new Identifier();
        }
        if (obj.isRegistered()) {
            return obj;
        }
        objectTable.put(new Long(obj.getIdentifier()), obj);
        obj.setRegistered(true);
        return obj;
    }

    static final Identifiable addToObjectTable(Object obj) {
        if (obj == null) {
            return new Identifier();
        }
        Identifier ergeb = new Identifier();
        Cebra.getNewIdentifier(ergeb);
        objectTable.put(new Long(ergeb.getIdentifier()), obj);
        ergeb.setRegistered(true);
        return ergeb;
    }

    static final Object getFromObjectTable(Identifiable obj) {
        Long l = new Long(obj.getIdentifier());
        if (l.intValue() == 1) {
            return new Double(Double.POSITIVE_INFINITY);
        }
        if (l.intValue() == 2) {
            return new Double(Double.NEGATIVE_INFINITY);
        }
        return objectTable.get(l);
    }

    public static final Object removeFromObjectTable(Identifiable obj) {
        if (obj == null) {
            return null;
        }
        return objectTable.remove(new Long(obj.getIdentifier()));
    }
}

