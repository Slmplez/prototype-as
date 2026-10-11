/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.security;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import org.eclipse.osgi.internal.signedcontent.TrustEngineListener;

public abstract class TrustEngine {
    public abstract Certificate findTrustAnchor(Certificate[] var1) throws IOException;

    public String addTrustAnchor(Certificate anchor, String alias) throws IOException, GeneralSecurityException {
        String storedAlias = this.doAddTrustAnchor(anchor, alias);
        TrustEngineListener listener = TrustEngineListener.getInstance();
        if (listener != null) {
            listener.addedTrustAnchor(anchor);
        }
        return storedAlias;
    }

    protected abstract String doAddTrustAnchor(Certificate var1, String var2) throws IOException, GeneralSecurityException;

    public final void removeTrustAnchor(Certificate anchor) throws IOException, GeneralSecurityException {
        this.doRemoveTrustAnchor(anchor);
        TrustEngineListener listener = TrustEngineListener.getInstance();
        if (listener != null) {
            listener.removedTrustAnchor(anchor);
        }
    }

    protected abstract void doRemoveTrustAnchor(Certificate var1) throws IOException, GeneralSecurityException;

    public void removeTrustAnchor(String alias) throws IOException, GeneralSecurityException {
        TrustEngineListener listener;
        Certificate existing = this.getTrustAnchor(alias);
        this.doRemoveTrustAnchor(alias);
        if (existing != null && (listener = TrustEngineListener.getInstance()) != null) {
            listener.removedTrustAnchor(existing);
        }
    }

    protected abstract void doRemoveTrustAnchor(String var1) throws IOException, GeneralSecurityException;

    public abstract Certificate getTrustAnchor(String var1) throws IOException, GeneralSecurityException;

    public abstract String[] getAliases() throws IOException, GeneralSecurityException;

    public abstract boolean isReadOnly();

    public abstract String getName();
}

