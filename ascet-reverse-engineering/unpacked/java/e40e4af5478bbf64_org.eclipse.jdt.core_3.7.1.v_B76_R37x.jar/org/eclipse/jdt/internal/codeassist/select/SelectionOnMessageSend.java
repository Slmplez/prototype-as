/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnMessageSend
extends MessageSend {
    private MethodBinding findNonDefaultAbstractMethod(MethodBinding methodBinding) {
        ReferenceBinding[] itsInterfaces = methodBinding.declaringClass.superInterfaces();
        if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
            ReferenceBinding[] interfacesToVisit = itsInterfaces;
            int nextPosition = interfacesToVisit.length;
            int i = 0;
            while (i < nextPosition) {
                ReferenceBinding currentType = interfacesToVisit[i];
                MethodBinding[] methods = currentType.getMethods(methodBinding.selector);
                if (methods != null) {
                    int k = 0;
                    while (k < methods.length) {
                        if (methodBinding.areParametersEqual(methods[k])) {
                            return methods[k];
                        }
                        ++k;
                    }
                }
                if ((itsInterfaces = currentType.superInterfaces()) != Binding.NO_SUPERINTERFACES) {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block10: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block10;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
                ++i;
            }
        }
        return methodBinding;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<SelectOnMessageSend:");
        if (!this.receiver.isImplicitThis()) {
            this.receiver.printExpression(0, output).append('.');
        }
        output.append(this.selector).append('(');
        if (this.arguments != null) {
            int i = 0;
            while (i < this.arguments.length) {
                if (i > 0) {
                    output.append(", ");
                }
                this.arguments[i].printExpression(0, output);
                ++i;
            }
        }
        return output.append(")>");
    }

    public TypeBinding resolveType(BlockScope scope) {
        super.resolveType(scope);
        if (this.binding == null || !this.binding.isValidBinding() && this.binding.problemId() != 2 && this.binding.problemId() != 5 && this.binding.problemId() != 6 && this.binding.problemId() != 7) {
            throw new SelectionNodeFound();
        }
        if (this.binding.isDefaultAbstract()) {
            throw new SelectionNodeFound(this.findNonDefaultAbstractMethod(this.binding));
        }
        throw new SelectionNodeFound(this.binding);
    }
}

