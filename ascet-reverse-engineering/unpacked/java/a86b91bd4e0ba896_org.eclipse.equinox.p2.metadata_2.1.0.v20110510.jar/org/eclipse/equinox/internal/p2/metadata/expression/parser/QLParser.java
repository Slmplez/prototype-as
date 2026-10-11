/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression.parser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.internal.p2.metadata.expression.parser.ExpressionParser;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class QLParser
extends ExpressionParser {
    private static final long serialVersionUID = 882034383978853143L;
    private static final int TOKEN_ANY = 42;
    private static final int TOKEN_LATEST = 70;
    private static final int TOKEN_LIMIT = 71;
    private static final int TOKEN_FIRST = 72;
    private static final int TOKEN_FLATTEN = 73;
    private static final int TOKEN_UNIQUE = 74;
    private static final int TOKEN_SELECT = 75;
    private static final int TOKEN_COLLECT = 76;
    private static final int TOKEN_TRAVERSE = 77;
    private static final int TOKEN_INTERSECT = 78;
    private static final int TOKEN_UNION = 79;
    private static final Map<String, Integer> qlKeywords = new HashMap<String, Integer>();

    static {
        qlKeywords.putAll(keywords);
        qlKeywords.put("collect", new Integer(76));
        qlKeywords.put("false", new Integer(52));
        qlKeywords.put("first", new Integer(72));
        qlKeywords.put("flatten", new Integer(73));
        qlKeywords.put("latest", new Integer(70));
        qlKeywords.put("limit", new Integer(71));
        qlKeywords.put("null", new Integer(50));
        qlKeywords.put("select", new Integer(75));
        qlKeywords.put("traverse", new Integer(77));
        qlKeywords.put("true", new Integer(51));
        qlKeywords.put("unique", new Integer(74));
        qlKeywords.put("intersect", new Integer(78));
        qlKeywords.put("union", new Integer(79));
        qlKeywords.put("_", new Integer(42));
    }

    public QLParser(IExpressionFactory factory) {
        super(factory);
    }

    @Override
    protected Map<String, Integer> keywordToTokenMap() {
        return qlKeywords;
    }

    @Override
    protected IExpression parseCondition() {
        IExpression expr = this.parseOr();
        if (this.currentToken == 25) {
            this.nextToken();
            IExpression ifTrue = this.parseOr();
            this.assertToken(26);
            this.nextToken();
            expr = this.factory.condition(expr, ifTrue, this.parseOr());
        }
        return expr;
    }

    @Override
    protected IExpression parseMember() {
        IExpression expr = this.parseFunction();
        block3: while (this.currentToken == 21 || this.currentToken == 32) {
            int savePos = this.tokenPos;
            int saveToken = this.currentToken;
            Object saveTokenValue = this.tokenValue;
            this.nextToken();
            if (saveToken == 21) {
                switch (this.currentToken) {
                    case 40: {
                        String name = (String)this.tokenValue;
                        this.nextToken();
                        if (this.currentToken == 30) {
                            this.nextToken();
                            IExpression[] callArgs = this.parseArray();
                            this.assertToken(31);
                            this.nextToken();
                            expr = this.factory.memberCall(expr, name, callArgs);
                            continue block3;
                        }
                        expr = this.factory.member(expr, name);
                        continue block3;
                    }
                    default: {
                        this.tokenPos = savePos;
                        this.currentToken = saveToken;
                        this.tokenValue = saveTokenValue;
                        return expr;
                    }
                }
            }
            IExpression atExpr = this.parseMember();
            this.assertToken(33);
            this.nextToken();
            expr = this.factory.at(expr, atExpr);
        }
        return expr;
    }

    protected IExpression parseFunction() {
        Object function;
        if (this.currentToken == 40 && (function = this.factory.getFunctionMap().get(this.tokenValue)) != null) {
            int savePos = this.tokenPos;
            int saveToken = this.currentToken;
            Object saveTokenValue = this.tokenValue;
            this.nextToken();
            if (this.currentToken == 30) {
                this.nextToken();
                IExpression[] args = this.currentToken == 31 ? IExpressionFactory.NO_ARGS : this.parseArray();
                this.assertToken(31);
                this.nextToken();
                return this.factory.function(function, args);
            }
            this.tokenPos = savePos;
            this.currentToken = saveToken;
            this.tokenValue = saveTokenValue;
        }
        return this.parseUnary();
    }

    @Override
    protected IExpression parseCollectionLHS() {
        IExpression expr;
        switch (this.currentToken) {
            case 70: 
            case 71: 
            case 72: 
            case 73: 
            case 74: 
            case 75: 
            case 76: 
            case 77: 
            case 78: 
            case 79: {
                expr = this.getVariableOrRootMember(this.rootVariable);
                break;
            }
            default: {
                expr = super.parseCollectionLHS();
            }
        }
        return expr;
    }

    @Override
    protected IExpression parseCollectionRHS(IExpression expr, int funcToken) {
        switch (funcToken) {
            case 75: {
                expr = this.factory.select(expr, this.parseLambdaDefinition());
                break;
            }
            case 76: {
                expr = this.factory.collect(expr, this.parseLambdaDefinition());
                break;
            }
            case 72: {
                expr = this.factory.first(expr, this.parseLambdaDefinition());
                break;
            }
            case 77: {
                expr = this.factory.traverse(expr, this.parseLambdaDefinition());
                break;
            }
            case 70: {
                if (this.currentToken == 31) {
                    expr = this.factory.latest(expr);
                    this.assertToken(31);
                    this.nextToken();
                    break;
                }
                expr = this.factory.latest(this.factory.select(expr, this.parseLambdaDefinition()));
                break;
            }
            case 73: {
                if (this.currentToken == 31) {
                    expr = this.factory.flatten(expr);
                    this.assertToken(31);
                    this.nextToken();
                    break;
                }
                expr = this.factory.flatten(this.factory.select(expr, this.parseLambdaDefinition()));
                break;
            }
            case 71: {
                expr = this.factory.limit(expr, this.parseCondition());
                this.assertToken(31);
                this.nextToken();
                break;
            }
            case 78: {
                expr = this.factory.intersect(expr, this.parseCondition());
                this.assertToken(31);
                this.nextToken();
                break;
            }
            case 79: {
                expr = this.factory.union(expr, this.parseCondition());
                this.assertToken(31);
                this.nextToken();
                break;
            }
            case 74: {
                if (this.currentToken == 31) {
                    expr = this.factory.unique(expr, this.factory.constant(null));
                    break;
                }
                expr = this.factory.unique(expr, this.parseMember());
                this.assertToken(31);
                this.nextToken();
                break;
            }
            default: {
                expr = super.parseCollectionRHS(expr, funcToken);
            }
        }
        return expr;
    }

    @Override
    protected IExpression parseUnary() {
        IExpression expr;
        switch (this.currentToken) {
            case 32: {
                this.nextToken();
                expr = this.factory.array(this.parseArray());
                this.assertToken(33);
                this.nextToken();
                break;
            }
            case 42: {
                expr = this.factory.variable("_");
                this.nextToken();
                break;
            }
            default: {
                expr = super.parseUnary();
            }
        }
        return expr;
    }

    @Override
    protected IExpression parseLambdaDefinition() {
        IExpression[] assignments;
        IExpression each;
        IExpression[] variables;
        boolean endingRC = false;
        int anyIndex = -1;
        IExpression[] initializers = IExpressionFactory.NO_ARGS;
        if (this.currentToken == 34) {
            endingRC = true;
            this.nextToken();
            anyIndex = 0;
            variables = this.parseVariables();
            if (variables == null) {
                throw this.syntaxError();
            }
        } else {
            anyIndex = 0;
            variables = this.parseVariables();
            if (variables == null) {
                anyIndex = -1;
                initializers = this.parseArray();
                this.assertToken(34);
                this.nextToken();
                endingRC = true;
                int idx = 0;
                while (idx < initializers.length) {
                    IExpression initializer = initializers[idx];
                    if (initializer instanceof Variable && "_".equals(initializer.toString())) {
                        if (anyIndex == -1) {
                            anyIndex = idx;
                            break;
                        }
                        anyIndex = -1;
                        break;
                    }
                    ++idx;
                }
                if (anyIndex == -1) {
                    throw new IllegalArgumentException("Exaclty one _ must be present among the currying expressions");
                }
                variables = this.parseVariables();
                if (variables == null) {
                    throw this.syntaxError();
                }
            }
        }
        this.nextToken();
        IExpression body = this.parseCondition();
        if (endingRC) {
            this.assertToken(35);
            this.nextToken();
        }
        this.assertToken(31);
        this.nextToken();
        if (initializers.length == 0) {
            if (variables.length != 1) {
                throw new IllegalArgumentException("Must have exactly one variable unless currying is used");
            }
            each = variables[0];
            assignments = IExpressionFactory.NO_ARGS;
        } else {
            if (initializers.length != variables.length) {
                throw new IllegalArgumentException("Number of currying expressions and variables differ");
            }
            if (initializers.length == 1) {
                each = variables[0];
                assignments = IExpressionFactory.NO_ARGS;
            } else {
                each = variables[anyIndex];
                assignments = new IExpression[initializers.length - 1];
                int idx = 0;
                while (idx < anyIndex) {
                    assignments[idx] = this.factory.assignment(variables[idx], initializers[idx]);
                    ++idx;
                }
                ++idx;
                while (idx < initializers.length) {
                    assignments[idx] = this.factory.assignment(variables[idx], initializers[idx]);
                    ++idx;
                }
            }
        }
        return this.factory.lambda(each, assignments, body);
    }

    private IExpression[] parseVariables() {
        int savePos = this.tokenPos;
        int saveToken = this.currentToken;
        Object saveTokenValue = this.tokenValue;
        ArrayList<Object> ids = null;
        while (this.currentToken == 40) {
            if (ids == null) {
                ids = new ArrayList<Object>();
            }
            ids.add(this.tokenValue);
            this.nextToken();
            if (this.currentToken != 22) break;
            this.nextToken();
        }
        if (this.currentToken != 23) {
            this.tokenPos = savePos;
            this.currentToken = saveToken;
            this.tokenValue = saveTokenValue;
            return null;
        }
        if (ids == null) {
            return IExpressionFactory.NO_ARGS;
        }
        int top = ids.size();
        IExpression[] result = new IExpression[top];
        int idx = 0;
        while (idx < top) {
            String name = (String)ids.get(idx);
            IExpression var = this.factory.variable(name);
            this.push(var);
            result[idx] = var;
            ++idx;
        }
        return result;
    }
}

