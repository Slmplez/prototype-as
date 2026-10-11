/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.ClassName;
import de.etas.cebra.socket.ObjectTable;
import de.etas.cebra.socket.WrongItemTypeException;
import de.etas.types.Identifiable;
import de.etas.types.RemoteHandle;

final class ItemHandle {
    Object oHandle;
    char type;
    static Class class$de$etas$types$RemoteHandle;

    ItemHandle() {
    }

    ItemHandle(Object h, char t) {
        this.oHandle = h;
        this.type = t;
    }

    final String getClassName() throws WrongItemTypeException {
        if (this.type != 'C') {
            throw new WrongItemTypeException("Item is not a class.");
        }
        return ((ClassName)this.oHandle).name;
    }

    final Class getClassOfItem() {
        if (this.oHandle == null) {
            return null;
        }
        if (this.oHandle instanceof Character) {
            return Boolean.TYPE;
        }
        if (this.oHandle instanceof Boolean) {
            return Boolean.TYPE;
        }
        if (this.oHandle instanceof Byte) {
            return Byte.TYPE;
        }
        if (this.oHandle instanceof Short) {
            return Short.TYPE;
        }
        if (this.oHandle instanceof Integer) {
            return Integer.TYPE;
        }
        if (this.oHandle instanceof Long) {
            return Long.TYPE;
        }
        if (this.oHandle instanceof Float) {
            return Float.TYPE;
        }
        if (this.oHandle instanceof Double) {
            return Double.TYPE;
        }
        if (this.oHandle instanceof RemoteHandle) {
            Class<?> clazz = class$de$etas$types$RemoteHandle;
            if (clazz == null) {
                try {
                    clazz = class$de$etas$types$RemoteHandle = Class.forName("de.etas.types.RemoteHandle");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz;
        }
        if (this.oHandle instanceof Identifiable) {
            Object obj = ObjectTable.getFromObjectTable((Identifiable)this.oHandle);
            if (obj == null) {
                return this.oHandle.getClass();
            }
            return obj.getClass();
        }
        return this.oHandle.getClass();
    }

    final int readInteger() throws WrongItemTypeException {
        if (this.type != 'I') {
            throw new WrongItemTypeException("Item is not a String");
        }
        return (Integer)this.oHandle;
    }

    final Object readObject() {
        if (this.type == 'C') {
            return Cebra.getClassByName(((ClassName)this.oHandle).name);
        }
        return this.oHandle;
    }

    final String readString() throws WrongItemTypeException {
        if (this.type != 'Z') {
            throw new WrongItemTypeException("Item is not a String");
        }
        return (String)this.oHandle;
    }
}

