/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines;

import autosar3x.genericstructure.infrastructure.ARObject;
import java.net.URI;
import javax.activation.MimeType;

public interface Url
extends ARObject {
    public MimeType getMimeType();

    public void setMimeType(MimeType var1);

    public void unsetMimeType();

    public boolean isSetMimeType();

    public URI getValue();

    public void setValue(URI var1);

    public void unsetValue();

    public boolean isSetValue();
}

