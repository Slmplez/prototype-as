/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.io.Serializable;
import org.eclipse.emf.common.util.Enumerator;

public abstract class AbstractEnumerator
implements Enumerator,
Serializable {
    private final String name;
    private final int value;
    private final String literal;

    protected AbstractEnumerator(int value, String name) {
        this.name = this.literal = name;
        this.value = value;
    }

    protected AbstractEnumerator(int value, String name, String literal) {
        this.name = name;
        this.value = value;
        this.literal = literal;
    }

    public final String getName() {
        return this.name;
    }

    public final int getValue() {
        return this.value;
    }

    public final String getLiteral() {
        return this.literal;
    }

    public final String toString() {
        return this.literal;
    }

    protected Object writeReplace() throws ObjectStreamException {
        return new AbstractEnumeratorExternalizeable(this);
    }

    private static class AbstractEnumeratorExternalizeable
    implements Externalizable {
        protected AbstractEnumerator enumerator;
        private static final Class<?>[] SIGNATURE = new Class[]{String.class};

        public AbstractEnumeratorExternalizeable(AbstractEnumerator enumerator) {
            this.enumerator = enumerator;
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeObject(this.enumerator.getClass());
            objectOutput.writeUTF(this.enumerator.getName());
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            Class _class = (Class)objectInput.readObject();
            String name = objectInput.readUTF();
            try {
                this.enumerator = (AbstractEnumerator)_class.getMethod("get", SIGNATURE).invoke(null, name);
            }
            catch (Exception exception) {
                IOException ioException = new IOException();
                ioException.initCause(exception);
                throw ioException;
            }
        }

        protected Object readResolve() {
            return this.enumerator;
        }
    }
}

