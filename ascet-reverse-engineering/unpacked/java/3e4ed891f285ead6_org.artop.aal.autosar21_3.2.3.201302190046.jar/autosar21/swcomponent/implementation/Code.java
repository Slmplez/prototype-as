/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GCode
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.implementation;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.implementation.CodeTypeEnum;
import autosar21.swcomponent.implementation.Implementation;
import gautosar.gcommonstructure.gimplementation.GCode;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Code
extends Identifiable,
GCode {
    public Implementation getImplementation();

    public void setImplementation(Implementation var1);

    public CodeTypeEnum getType();

    public void setType(CodeTypeEnum var1);

    public void unsetType();

    public boolean isSetType();

    public EList<Xfile> getXfiles();
}

