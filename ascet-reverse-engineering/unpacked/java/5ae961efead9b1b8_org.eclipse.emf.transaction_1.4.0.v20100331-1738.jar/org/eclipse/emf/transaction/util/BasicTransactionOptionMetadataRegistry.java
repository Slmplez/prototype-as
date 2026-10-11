/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.util;

import java.util.concurrent.ConcurrentHashMap;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.util.BasicTransactionOptionMetadata;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicTransactionOptionMetadataRegistry
extends ConcurrentHashMap<Object, Transaction.OptionMetadata>
implements Transaction.OptionMetadata.Registry {
    private static final long serialVersionUID = 1L;
    private final Transaction.OptionMetadata.Registry delegate;
    private final BasicTransactionOptionMetadataRegistry basicDelegate;

    public BasicTransactionOptionMetadataRegistry() {
        this(Transaction.OptionMetadata.Registry.INSTANCE);
    }

    protected BasicTransactionOptionMetadataRegistry(Transaction.OptionMetadata.Registry delegate) {
        super(16, 0.75f, 2);
        this.delegate = delegate;
        this.basicDelegate = delegate instanceof BasicTransactionOptionMetadataRegistry ? (BasicTransactionOptionMetadataRegistry)delegate : null;
    }

    @Override
    public Transaction.OptionMetadata getOptionMetadata(Object option) {
        Transaction.OptionMetadata existing;
        Transaction.OptionMetadata result = this.basicGetOptionMetadata(option);
        if (result == null && (existing = this.putIfAbsent(option, result = new BasicTransactionOptionMetadata(option))) != null) {
            result = existing;
        }
        return result;
    }

    protected Transaction.OptionMetadata basicGetOptionMetadata(Object option) {
        Transaction.OptionMetadata result = (Transaction.OptionMetadata)this.get(option);
        if (result == null) {
            result = this.delegatedGetOptionMetadata(option);
        }
        return result;
    }

    protected Transaction.OptionMetadata delegatedGetOptionMetadata(Object option) {
        return this.basicDelegate != null ? this.basicDelegate.basicGetOptionMetadata(option) : (this.delegate != null ? this.delegate.getOptionMetadata(option) : null);
    }

    public Transaction.OptionMetadata register(Transaction.OptionMetadata metadata) {
        return this.put(metadata.getOption(), metadata);
    }
}

