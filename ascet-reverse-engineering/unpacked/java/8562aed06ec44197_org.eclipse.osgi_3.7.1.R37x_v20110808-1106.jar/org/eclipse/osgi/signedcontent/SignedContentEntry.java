/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.signedcontent;

import java.io.IOException;
import org.eclipse.osgi.signedcontent.InvalidContentException;
import org.eclipse.osgi.signedcontent.SignerInfo;

public interface SignedContentEntry {
    public String getName();

    public SignerInfo[] getSignerInfos();

    public boolean isSigned();

    public void verify() throws IOException, InvalidContentException;
}

