/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.genericstructure.commonpatterns.documentationblock;

import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData1;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DocumentationBlock
extends ARObject {
    public Identifiable getIdentifiable();

    public void setIdentifiable(Identifiable var1);

    public EList<MlData1> getPs();
}

