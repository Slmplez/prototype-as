/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.OrPattern;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;

public class OrLocator
extends PatternLocator {
    protected PatternLocator[] patternLocators;

    public OrLocator(OrPattern pattern) {
        super(pattern);
        SearchPattern[] patterns = pattern.patterns;
        int length = patterns.length;
        this.patternLocators = new PatternLocator[length];
        int i = 0;
        while (i < length) {
            this.patternLocators[i] = PatternLocator.patternLocator(patterns[i]);
            ++i;
        }
    }

    public void initializePolymorphicSearch(MatchLocator locator) {
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            this.patternLocators[i].initializePolymorphicSearch(locator);
            ++i;
        }
    }

    public int match(Annotation node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(ASTNode node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(ConstructorDeclaration node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(Expression node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(FieldDeclaration node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(LocalDeclaration node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(MethodDeclaration node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(MemberValuePair node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(MessageSend node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(Reference node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(TypeDeclaration node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(TypeParameter node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int match(TypeReference node, MatchingNodeSet nodeSet) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].match(node, nodeSet);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    protected int matchContainer() {
        int result = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            result |= this.patternLocators[i].matchContainer();
            ++i;
        }
        return result;
    }

    protected void matchLevelAndReportImportRef(ImportReference importRef, Binding binding, MatchLocator locator) throws CoreException {
        Binding refBinding = binding;
        if (importRef.isStatic()) {
            MemberTypeBinding memberBinding;
            if (binding instanceof FieldBinding) {
                FieldBinding fieldBinding = (FieldBinding)binding;
                if (!fieldBinding.isStatic()) {
                    return;
                }
                refBinding = fieldBinding.declaringClass;
            } else if (binding instanceof MethodBinding) {
                MethodBinding methodBinding = (MethodBinding)binding;
                if (!methodBinding.isStatic()) {
                    return;
                }
                refBinding = methodBinding.declaringClass;
            } else if (binding instanceof MemberTypeBinding && !(memberBinding = (MemberTypeBinding)binding).isStatic()) {
                return;
            }
        }
        PatternLocator closestPattern = null;
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel;
            PatternLocator patternLocator = this.patternLocators[i];
            int n = newLevel = patternLocator.referenceType() == 0 ? 0 : patternLocator.resolveLevel(refBinding);
            if (newLevel > level) {
                closestPattern = patternLocator;
                if (newLevel == 3) break;
                level = newLevel;
            }
            ++i;
        }
        if (closestPattern != null) {
            closestPattern.matchLevelAndReportImportRef(importRef, binding, locator);
        }
    }

    protected void matchReportImportRef(ImportReference importRef, Binding binding, IJavaElement element, int accuracy, MatchLocator locator) throws CoreException {
        PatternLocator closestPattern = null;
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].matchLevel(importRef);
            if (newLevel > level) {
                closestPattern = this.patternLocators[i];
                if (newLevel == 3) break;
                level = newLevel;
            }
            ++i;
        }
        if (closestPattern != null) {
            closestPattern.matchReportImportRef(importRef, binding, element, accuracy, locator);
        }
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, IJavaElement localElement, IJavaElement[] otherElements, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        PatternLocator closestPattern = null;
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel;
            PatternLocator patternLocator = this.patternLocators[i];
            int n = newLevel = patternLocator.referenceType() == 0 ? 0 : patternLocator.resolveLevel(reference);
            if (newLevel > level) {
                closestPattern = patternLocator;
                if (newLevel == 3) break;
                level = newLevel;
            }
            ++i;
        }
        if (closestPattern != null) {
            closestPattern.matchReportReference(reference, element, localElement, otherElements, elementBinding, accuracy, locator);
        }
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        this.matchReportReference(reference, element, null, null, elementBinding, accuracy, locator);
    }

    public SearchMatch newDeclarationMatch(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, int length, MatchLocator locator) {
        PatternLocator closestPattern = null;
        int level = 0;
        int i = 0;
        int pl = this.patternLocators.length;
        while (i < pl) {
            int newLevel;
            PatternLocator patternLocator = this.patternLocators[i];
            int n = newLevel = patternLocator.referenceType() == 0 ? 0 : patternLocator.resolveLevel(reference);
            if (newLevel > level) {
                closestPattern = patternLocator;
                if (newLevel == 3) break;
                level = newLevel;
            }
            ++i;
        }
        if (closestPattern != null) {
            return closestPattern.newDeclarationMatch(reference, element, elementBinding, accuracy, length, locator);
        }
        return locator.newDeclarationMatch(element, elementBinding, accuracy, reference.sourceStart, length);
    }

    public int resolveLevel(ASTNode node) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].resolveLevel(node);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int resolveLevel(Binding binding) {
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].resolveLevel(binding);
            if (newLevel > level) {
                if (newLevel == 3) {
                    return 3;
                }
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    void setFlavors(int flavors) {
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            this.patternLocators[i].setFlavors(flavors);
            ++i;
        }
    }
}

