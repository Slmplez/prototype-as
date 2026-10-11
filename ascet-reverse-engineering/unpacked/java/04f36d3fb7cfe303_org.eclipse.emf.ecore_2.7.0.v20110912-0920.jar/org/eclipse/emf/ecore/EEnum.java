/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnumLiteral;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EEnum
extends EDataType {
    public EList<EEnumLiteral> getELiterals();

    public EEnumLiteral getEEnumLiteral(String var1);

    public EEnumLiteral getEEnumLiteral(int var1);

    public EEnumLiteral getEEnumLiteralByLiteral(String var1);
}

