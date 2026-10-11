/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.connect;

import com.sun.jdi.connect.Transport;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface Connector {
    public Map defaultArguments();

    public String description();

    public String name();

    public Transport transport();

    public static interface Argument
    extends Serializable {
        public String description();

        public boolean isValid(String var1);

        public String label();

        public boolean mustSpecify();

        public String name();

        public void setValue(String var1);

        public String value();
    }

    public static interface BooleanArgument
    extends Argument {
        public boolean booleanValue();

        public boolean isValid(String var1);

        public void setValue(boolean var1);

        public String stringValueOf(boolean var1);
    }

    public static interface IntegerArgument
    extends Argument {
        public int intValue();

        public boolean isValid(int var1);

        public boolean isValid(String var1);

        public int max();

        public int min();

        public void setValue(int var1);

        public String stringValueOf(int var1);
    }

    public static interface SelectedArgument
    extends Argument {
        public List choices();

        public boolean isValid(String var1);
    }

    public static interface StringArgument
    extends Argument {
        public boolean isValid(String var1);
    }
}

