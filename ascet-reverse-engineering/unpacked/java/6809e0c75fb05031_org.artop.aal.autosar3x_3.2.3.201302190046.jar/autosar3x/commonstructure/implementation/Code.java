/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GCode
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.implementation;

import autosar3x.commonstructure.implementation.CodeTypeEnum;
import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.commonstructure.implementation.XfileSo;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
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

    public EList<XfileSo> getXfiles();
}

