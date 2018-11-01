### Extract low-level primitives

```
> ((get-primitive 'datum->syntax) #f 1)
#<correlated 1>
> (datum->syntax #f 1)
#<syntax 1>
```
