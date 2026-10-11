/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.browser.AuthenticationEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface AuthenticationListener
extends SWTEventListener {
    public void authenticate(AuthenticationEvent var1);
}

