/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.provisional.service.security;

import org.eclipse.osgi.signedcontent.SignedContent;

public class AuthorizationEvent {
    public static final int ALLOWED = 0;
    public static final int DENIED = 1;
    private final int result;
    private final SignedContent content;
    private final Object context;
    private final int severity;

    public AuthorizationEvent(int result, SignedContent content, Object context, int severity) {
        this.result = result;
        this.content = content;
        this.context = context;
        this.severity = severity;
    }

    public int getResult() {
        return this.result;
    }

    public int getSeverity() {
        return this.severity;
    }

    public SignedContent getSignedContent() {
        return this.content;
    }

    public Object getContext() {
        return this.context;
    }
}

