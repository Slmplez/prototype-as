/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.service;

import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IConstraintParser;
import org.eclipse.emf.validation.service.IParameterizedConstraintDescriptor;
import org.eclipse.emf.validation.xml.ConstraintParserException;

public interface IParameterizedConstraintParser
extends IConstraintParser {
    public IModelConstraint parseConstraint(IParameterizedConstraintDescriptor var1) throws ConstraintParserException;
}

