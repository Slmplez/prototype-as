/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
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
import org.eclipse.jdt.internal.core.search.matching.AndPattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;

public class AndLocator
extends PatternLocator {
    final PatternLocator[] patternLocators;
    final int[] levels;

    public AndLocator(AndPattern pattern) {
        super(pattern);
        SearchPattern[] patterns = pattern.patterns;
        PatternLocator[] locators = new PatternLocator[patterns.length];
        this.levels = new int[patterns.length];
        int i = 0;
        int l = patterns.length;
        while (i < l) {
            locators[i] = PatternLocator.patternLocator(patterns[i]);
            this.levels[i] = 0;
            ++i;
        }
        this.patternLocators = locators;
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
        int result = 15;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            result &= this.patternLocators[i].matchContainer();
            ++i;
        }
        return result;
    }

    protected void matchReportImportRef(ImportReference importRef, Binding binding, IJavaElement element, int accuracy, MatchLocator locator) throws CoreException {
        PatternLocator weakestPattern = null;
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].matchLevel(importRef);
            if (newLevel == 0) {
                return;
            }
            if (weakestPattern == null || newLevel < level) {
                weakestPattern = this.patternLocators[i];
                level = newLevel;
            }
            ++i;
        }
        weakestPattern.matchReportImportRef(importRef, binding, element, accuracy, locator);
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, IJavaElement localElement, IJavaElement[] otherElements, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        PatternLocator weakestPattern = null;
        int level = 0;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            if (this.patternLocators[i].referenceType() == 0) {
                return;
            }
            int newLevel = this.patternLocators[i].resolveLevel(reference);
            if (newLevel == 0) {
                return;
            }
            if (weakestPattern == null || newLevel < level) {
                weakestPattern = this.patternLocators[i];
                level = newLevel;
            }
            ++i;
        }
        weakestPattern.matchReportReference(reference, element, localElement, otherElements, elementBinding, accuracy, locator);
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        this.matchReportReference(reference, element, null, null, elementBinding, accuracy, locator);
    }

    public int resolveLevel(ASTNode node) {
        int level = 3;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].resolveLevel(node);
            if (newLevel == 0) {
                return 0;
            }
            this.levels[i] = newLevel;
            if (newLevel < level) {
                level = newLevel;
            }
            ++i;
        }
        return level;
    }

    public int resolveLevel(Binding binding) {
        int level = 3;
        int i = 0;
        int length = this.patternLocators.length;
        while (i < length) {
            int newLevel = this.patternLocators[i].resolveLevel(binding);
            if (newLevel == 0) {
                return 0;
            }
            this.levels[i] = newLevel;
            if (newLevel < level) {
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

