/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.provisional.service.security;

import java.util.EventListener;
import org.eclipse.osgi.internal.provisional.service.security.AuthorizationEvent;

public interface AuthorizationListener
extends EventListener {
    public void authorizationEvent(AuthorizationEvent var1);
}

