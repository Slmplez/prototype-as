/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.xml;

import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IConstraintParser;
import org.eclipse.emf.validation.xml.ConstraintParserException;
import org.eclipse.emf.validation.xml.IXmlConstraintDescriptor;

@Deprecated
public interface IXmlConstraintParser
extends IConstraintParser {
    public IModelConstraint parseConstraint(IXmlConstraintDescriptor var1) throws ConstraintParserException;
}

