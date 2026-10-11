/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 */
package autosar21.genericstructure.infrastructure;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import javax.xml.datatype.XMLGregorianCalendar;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ARObject
extends GARObject {
    public String getChecksum();

    public void setChecksum(String var1);

    public void unsetChecksum();

    public boolean isSetChecksum();

    public XMLGregorianCalendar getTimestamp();

    public void setTimestamp(XMLGregorianCalendar var1);

    public void unsetTimestamp();

    public boolean isSetTimestamp();

    public <T> T eContainer(Class<T> var1);
}

