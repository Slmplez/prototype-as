/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gcommonstructure.gimplementation;

import gautosar.gcommonstructure.gimplementation.GCode;
import gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GImplementation
extends GPackageableElement {
    public GResourceConsumption gGetResourceConsumption();

    public void gSetResourceConsumption(GResourceConsumption var1);

    public EList<GCode> gGetCodeDescriptors();
}

