/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 */
package org.eclipse.emf.transaction.impl;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.TransactionImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EMFCommandTransaction
extends TransactionImpl {
    private final Command command;

    public EMFCommandTransaction(Command command, InternalTransactionalEditingDomain domain, Map<?, ?> options) {
        super(domain, false, EMFCommandTransaction.addCommand(options, command));
        this.command = command;
    }

    public final Command getCommand() {
        return this.command;
    }

    private static Map<?, ?> addCommand(Map<?, ?> options, Command command) {
        Map<Object, Object> result = options;
        if (options == null) {
            result = Collections.singletonMap("executing_command", command);
        } else if (options.get("executing_command") != command) {
            HashMap mutable = new HashMap(options);
            mutable.put("executing_command", command);
            result = mutable;
        }
        return result;
    }
}

