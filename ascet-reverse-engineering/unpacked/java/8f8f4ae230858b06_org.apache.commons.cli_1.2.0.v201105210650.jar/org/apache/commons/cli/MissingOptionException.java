/*
 * Decompiled with CFR 0.152.
 */
package org.apache.commons.cli;

import java.util.Iterator;
import java.util.List;
import org.apache.commons.cli.ParseException;

public class MissingOptionException
extends ParseException {
    private List missingOptions;

    public MissingOptionException(String message) {
        super(message);
    }

    public MissingOptionException(List missingOptions) {
        this(MissingOptionException.createMessage(missingOptions));
        this.missingOptions = missingOptions;
    }

    public List getMissingOptions() {
        return this.missingOptions;
    }

    private static String createMessage(List missingOptions) {
        StringBuffer buff = new StringBuffer("Missing required option");
        buff.append(missingOptions.size() == 1 ? "" : "s");
        buff.append(": ");
        Iterator it = missingOptions.iterator();
        while (it.hasNext()) {
            buff.append(it.next());
            if (!it.hasNext()) continue;
            buff.append(", ");
        }
        return buff.toString();
    }
}

