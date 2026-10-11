/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.ggenericstructure.ginfrastructure;

import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.ecore.EObject;

public interface GARObject
extends EObject {
    public String gGetChecksum();

    public void gSetChecksum(String var1);

    public void gUnsetChecksum();

    public boolean gIsSetChecksum();

    public XMLGregorianCalendar gGetTimestamp();

    public void gSetTimestamp(XMLGregorianCalendar var1);

    public void gUnsetTimestamp();

    public boolean gIsSetTimestamp();
}

