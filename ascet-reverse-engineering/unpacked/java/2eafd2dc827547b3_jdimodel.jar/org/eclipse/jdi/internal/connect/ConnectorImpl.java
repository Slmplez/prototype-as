/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.connect.Connector
 *  com.sun.jdi.connect.Connector$Argument
 *  com.sun.jdi.connect.Connector$BooleanArgument
 *  com.sun.jdi.connect.Connector$IntegerArgument
 *  com.sun.jdi.connect.Connector$SelectedArgument
 *  com.sun.jdi.connect.Connector$StringArgument
 *  com.sun.jdi.connect.Transport
 *  com.sun.jdi.connect.spi.Connection
 */
package org.eclipse.jdi.internal.connect;

import com.sun.jdi.VirtualMachine;
import com.sun.jdi.connect.Connector;
import com.sun.jdi.connect.Transport;
import com.sun.jdi.connect.spi.Connection;
import java.io.IOException;
import java.util.List;
import org.eclipse.jdi.Bootstrap;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.VirtualMachineManagerImpl;

public abstract class ConnectorImpl
implements Connector {
    private VirtualMachineManagerImpl fVirtualMachineManager;
    protected Transport fTransport;
    protected VirtualMachineImpl fVirtualMachine;

    public ConnectorImpl(VirtualMachineManagerImpl virtualMachineManager) {
        this.fVirtualMachineManager = virtualMachineManager;
    }

    public VirtualMachineManagerImpl virtualMachineManager() {
        return this.fVirtualMachineManager;
    }

    public VirtualMachineImpl virtualMachine() {
        return this.fVirtualMachine;
    }

    public abstract String description();

    public abstract String name();

    void setTransport(Transport transport) {
        this.fTransport = transport;
    }

    public Transport transport() {
        return this.fTransport;
    }

    synchronized void close() {
        this.virtualMachineManager().removeConnectedVM(this.fVirtualMachine);
    }

    protected VirtualMachine establishedConnection(Connection connection) throws IOException {
        this.fVirtualMachine = (VirtualMachineImpl)Bootstrap.virtualMachineManager().createVirtualMachine(connection);
        return this.fVirtualMachine;
    }

    public abstract class ArgumentImpl
    implements Connector.Argument {
        private static final long serialVersionUID = 8850533280769854833L;
        private String fName;
        private String fDescription;
        private String fLabel;
        private boolean fMustSpecify;

        protected ArgumentImpl(String name, String description, String label, boolean mustSpecify) {
            this.fName = name;
            this.fLabel = label;
            this.fDescription = description;
            this.fMustSpecify = mustSpecify;
        }

        public String name() {
            return this.fName;
        }

        public String description() {
            return this.fDescription;
        }

        public String label() {
            return this.fLabel;
        }

        public boolean mustSpecify() {
            return this.fMustSpecify;
        }

        public abstract String value();

        public abstract void setValue(String var1);

        public abstract boolean isValid(String var1);

        public abstract String toString();
    }

    public class BooleanArgumentImpl
    extends ArgumentImpl
    implements Connector.BooleanArgument {
        private static final long serialVersionUID = 6009335074727417445L;
        private Boolean fValue;

        protected BooleanArgumentImpl(String name, String description, String label, boolean mustSpecify) {
            super(name, description, label, mustSpecify);
        }

        public String value() {
            return this.fValue == null ? null : this.fValue.toString();
        }

        public void setValue(String value) {
            this.fValue = Boolean.valueOf(value);
        }

        public boolean isValid(String value) {
            return true;
        }

        public String toString() {
            return this.value();
        }

        public boolean booleanValue() {
            return this.fValue;
        }

        public void setValue(boolean value) {
            this.fValue = value;
        }

        public String stringValueOf(boolean value) {
            return Boolean.valueOf(value).toString();
        }
    }

    public class IntegerArgumentImpl
    extends ArgumentImpl
    implements Connector.IntegerArgument {
        private static final long serialVersionUID = 6009335074727417445L;
        private Integer fValue;
        private int fMin;
        private int fMax;

        protected IntegerArgumentImpl(String name, String description, String label, boolean mustSpecify, int min, int max) {
            super(name, description, label, mustSpecify);
            this.fMin = min;
            this.fMax = max;
        }

        public String value() {
            return this.fValue == null ? null : this.fValue.toString();
        }

        public void setValue(String value) {
            this.fValue = new Integer(value);
        }

        public boolean isValid(String value) {
            Integer val;
            try {
                val = new Integer(value);
            }
            catch (NumberFormatException numberFormatException) {
                return false;
            }
            return this.isValid(val);
        }

        public String toString() {
            return this.value();
        }

        public int intValue() {
            return this.fValue;
        }

        public void setValue(int value) {
            this.fValue = new Integer(value);
        }

        public int min() {
            return this.fMin;
        }

        public int max() {
            return this.fMax;
        }

        public boolean isValid(int value) {
            return this.fMin <= value && value <= this.fMax;
        }

        public String stringValueOf(int value) {
            return new Integer(value).toString();
        }
    }

    public class SelectedArgumentImpl
    extends StringArgumentImpl
    implements Connector.SelectedArgument {
        private static final long serialVersionUID = 6009335074727417445L;
        private List fChoices;

        protected SelectedArgumentImpl(String name, String description, String label, boolean mustSpecify, List choices) {
            super(name, description, label, mustSpecify);
            this.fChoices = choices;
        }

        public List choices() {
            return this.fChoices;
        }

        public boolean isValid(String value) {
            return this.fChoices.contains(value);
        }
    }

    public class StringArgumentImpl
    extends ArgumentImpl
    implements Connector.StringArgument {
        private static final long serialVersionUID = 6009335074727417445L;
        private String fValue;

        protected StringArgumentImpl(String name, String description, String label, boolean mustSpecify) {
            super(name, description, label, mustSpecify);
        }

        public String value() {
            return this.fValue;
        }

        public void setValue(String value) {
            this.fValue = value;
        }

        public boolean isValid(String value) {
            return true;
        }

        public String toString() {
            return this.fValue;
        }
    }
}

