/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.webkit.IWebURLRequest;

public class IWebMutableURLRequest
extends IWebURLRequest {
    public IWebMutableURLRequest(int address) {
        super(address);
    }

    public int setHTTPMethod(int post) {
        return COM.VtblCall(23, this.getAddress(), post);
    }

    public int setURL(int theUrl) {
        return COM.VtblCall(27, this.getAddress(), theUrl);
    }

    public int setValue(int value, int field) {
        return COM.VtblCall(28, this.getAddress(), value, field);
    }

    public int setAllowsAnyHTTPSCertificate() {
        return COM.VtblCall(29, this.getAddress());
    }
}

