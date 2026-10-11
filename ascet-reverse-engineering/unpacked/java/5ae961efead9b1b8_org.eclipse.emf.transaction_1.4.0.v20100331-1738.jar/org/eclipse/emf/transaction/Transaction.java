/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.emf.common.command.Command
 */
package org.eclipse.emf.transaction;

import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.TransactionChangeDescription;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.internal.AllowChangePropagationBlockingOption;
import org.eclipse.emf.transaction.internal.BlockChangePropagationOption;
import org.eclipse.emf.transaction.internal.ValidateEditOption;
import org.eclipse.emf.transaction.util.BasicTransactionOptionMetadata;
import org.eclipse.emf.transaction.util.BasicTransactionOptionMetadataRegistry;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Transaction {
    public static final String OPTION_NO_NOTIFICATIONS = "silent";
    public static final String OPTION_NO_TRIGGERS = "no_triggers";
    public static final String OPTION_NO_VALIDATION = "no_validation";
    public static final String OPTION_NO_UNDO = "no_undo";
    public static final String OPTION_UNPROTECTED = "unprotected";
    public static final String OPTION_IS_UNDO_REDO_TRANSACTION = "is_undo_redo_transaction";
    public static final String OPTION_VALIDATE_EDIT = "validate_edit";
    public static final String OPTION_VALIDATE_EDIT_CONTEXT = "validate_edit_context";

    public TransactionalEditingDomain getEditingDomain();

    public Transaction getParent();

    public Thread getOwner();

    public boolean isReadOnly();

    public Map<?, ?> getOptions();

    public boolean isActive();

    public void yield();

    public void commit() throws RollbackException;

    public void rollback();

    public TransactionChangeDescription getChangeDescription();

    public IStatus getStatus();

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface OptionMetadata {
        public Object getOption();

        public boolean isTag();

        public boolean isHereditary();

        public Class<?> getType();

        public Object getDefaultValue();

        public Object getValue(Map<?, ?> var1);

        public boolean isSet(Map<?, ?> var1);

        public boolean sameSetting(Map<?, ?> var1, Map<?, ?> var2);

        public void inherit(Map<?, ?> var1, Map<Object, Object> var2, boolean var3);

        public static interface Registry {
            public static final Registry INSTANCE = new BasicTransactionOptionMetadataRegistry(null){
                private static final long serialVersionUID = 1L;
                {
                    this.register(BasicTransactionOptionMetadata.newBoolean(Transaction.OPTION_NO_NOTIFICATIONS, false));
                    this.register(BasicTransactionOptionMetadata.newBoolean(Transaction.OPTION_NO_TRIGGERS, false));
                    this.register(BasicTransactionOptionMetadata.newBoolean(Transaction.OPTION_NO_VALIDATION, false));
                    this.register(BasicTransactionOptionMetadata.newBoolean(Transaction.OPTION_NO_UNDO, false));
                    this.register(BasicTransactionOptionMetadata.newBoolean(Transaction.OPTION_UNPROTECTED, false));
                    this.register(BasicTransactionOptionMetadata.newBoolean(Transaction.OPTION_IS_UNDO_REDO_TRANSACTION, false));
                    this.register(new ValidateEditOption());
                    this.register(new BasicTransactionOptionMetadata(Transaction.OPTION_VALIDATE_EDIT_CONTEXT));
                    this.register(BasicTransactionOptionMetadata.newBoolean("is_trigger_transaction", false));
                    this.register(new AllowChangePropagationBlockingOption());
                    this.register(new BlockChangePropagationOption());
                    this.register(new BasicTransactionOptionMetadata("executing_command", true, false, Command.class, null));
                }
            };

            public OptionMetadata getOptionMetadata(Object var1);
        }
    }
}

