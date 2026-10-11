/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
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

