(venv)~/PySnpSites$ time ./snp_sites.py random.short.fa random.short.vcf

real    1m37.270s
user    1m36.790s
sys     0m0.430s


         27842872 function calls (27842745 primitive calls) in 221.406 seconds

   Ordered by: cumulative time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    2.725    2.725  221.406  221.406 snp_sites.py:3(<module>)
      213   63.918    0.300  120.428    0.565 snp_sites.py:29(parse_fasta)
      211   91.441    0.433   92.842    0.440 snp_sites.py:23(update_snps)
 13250212   28.627    0.000   28.627    0.000 {method 'strip' of 'str' objects}
 13408442   27.934    0.000   27.934    0.000 {method 'append' of 'list' objects}
    78503    0.819    0.000    2.926    0.000 snp_sites.py:10(write_row)
    78505    1.362    0.000    1.362    0.000 {map}
   157223    0.940    0.000    0.940    0.000 {method 'join' of 'str' objects}
    79185    0.815    0.000    0.815    0.000 {method 'setdefault' of 'dict' objects}
316180/316150    0.787    0.000    0.787    0.000 {len}
        1    0.000    0.000    0.565    0.565 collections.py:37(__init__)
        1    0.231    0.231    0.565    0.565 _abcoll.py:483(update)
        1    0.284    0.284    0.463    0.463 collections.py:111(items)
    78504    0.397    0.000    0.397    0.000 {method 'write' of 'file' objects}
    78502    0.334    0.000    0.334    0.000 collections.py:53(__setitem__)
    78502    0.197    0.000    0.197    0.000 snp_sites.py:69(<dictcomp>)
    78503    0.179    0.000    0.179    0.000 collections.py:72(__iter__)
    78503    0.176    0.000    0.176    0.000 {method 'keys' of 'dict' objects}
    79208    0.175    0.000    0.175    0.000 {method 'get' of 'dict' objects}
        1    0.032    0.032    0.032    0.032 {sorted}
       18    0.000    0.000    0.017    0.001 re.py:226(_compile)
       12    0.000    0.000    0.016    0.001 sre_compile.py:495(compile)
       17    0.000    0.000    0.015    0.001 re.py:188(compile)
        1    0.000    0.000    0.011    0.011 __init__.py:99(<module>)
        1    0.001    0.001    0.010    0.010 __init__.py:45(<module>)
       12    0.000    0.000    0.008    0.001 sre_parse.py:663(parse)
    21/12    0.000    0.000    0.008    0.001 sre_parse.py:301(_parse_sub)
    24/13    0.002    0.000    0.007    0.001 sre_parse.py:379(_parse)
        1    0.000    0.000    0.007    0.007 argparse.py:1687(parse_args)
        1    0.000    0.000    0.007    0.007 argparse.py:1694(parse_known_args)
        1    0.000    0.000    0.007    0.007 argparse.py:1729(_parse_known_args)
       12    0.000    0.000    0.007    0.001 sre_compile.py:480(_code)
        1    0.000    0.000    0.007    0.007 argparse.py:1874(consume_positionals)
        1    0.000    0.000    0.007    0.007 decoder.py:2(<module>)
        1    0.000    0.000    0.005    0.005 argparse.py:1543(__init__)
    49/12    0.002    0.000    0.005    0.000 sre_compile.py:32(_compile)
        2    0.000    0.000    0.005    0.003 argparse.py:1776(take_action)
        2    0.000    0.000    0.005    0.003 argparse.py:2176(_get_values)
        4    0.005    0.001    0.005    0.001 {open}
        2    0.000    0.000    0.005    0.002 argparse.py:2225(_get_value)
        2    0.000    0.000    0.005    0.002 argparse.py:1117(__call__)
        1    0.001    0.001    0.004    0.004 encoder.py:2(<module>)
        1    0.000    0.000    0.004    0.004 scanner.py:2(<module>)
        1    0.001    0.001    0.003    0.003 case.py:1(<module>)
        3    0.000    0.000    0.003    0.001 argparse.py:1169(__init__)
        1    0.001    0.001    0.003    0.003 result.py:1(<module>)
        2    0.002    0.001    0.002    0.001 collections.py:237(namedtuple)
      155    0.001    0.000    0.002    0.000 sre_parse.py:201(get)
        3    0.000    0.000    0.002    0.001 argparse.py:1250(add_argument)
        1    0.000    0.000    0.002    0.002 difflib.py:29(<module>)
        1    0.000    0.000    0.002    0.002 argparse.py:2015(_match_arguments_partial)
        1    0.001    0.001    0.002    0.002 argparse.py:62(<module>)
        1    0.000    0.000    0.002    0.002 re.py:134(match)
      189    0.001    0.000    0.002    0.000 sre_parse.py:182(__next)
       22    0.000    0.000    0.002    0.000 sre_compile.py:178(_compile_charset)
       12    0.000    0.000    0.002    0.000 sre_compile.py:361(_compile_info)
        1    0.000    0.000    0.002    0.002 util.py:1(<module>)
      192    0.001    0.000    0.002    0.000 sre_parse.py:130(__getitem__)
        3    0.000    0.000    0.002    0.001 argparse.py:2299(_get_formatter)
        3    0.000    0.000    0.002    0.001 argparse.py:154(__init__)
        1    0.000    0.000    0.001    0.001 loader.py:1(<module>)
       22    0.001    0.000    0.001    0.000 sre_compile.py:207(_optimize_charset)
        1    0.000    0.000    0.001    0.001 collections.py:1(<module>)
        1    0.000    0.000    0.001    0.001 main.py:1(<module>)
    71/34    0.001    0.000    0.001    0.000 sre_parse.py:140(getwidth)
        1    0.000    0.000    0.001    0.001 runner.py:1(<module>)
      241    0.001    0.000    0.001    0.000 {isinstance}
        1    0.001    0.001    0.001    0.001 heapq.py:31(<module>)
      111    0.000    0.000    0.001    0.000 sre_parse.py:126(__len__)
        3    0.000    0.000    0.001    0.000 gettext.py:580(gettext)
        3    0.000    0.000    0.001    0.000 gettext.py:542(dgettext)
        3    0.000    0.000    0.001    0.000 gettext.py:476(translation)
        1    0.001    0.001    0.001    0.001 signals.py:1(<module>)
      111    0.000    0.000    0.001    0.000 sre_parse.py:195(match)
        3    0.000    0.000    0.001    0.000 gettext.py:421(find)
        1    0.000    0.000    0.001    0.001 decoder.py:17(_floatconstants)
        1    0.000    0.000    0.000    0.000 {method 'decode' of 'str' objects}
        2    0.000    0.000    0.000    0.000 argparse.py:1297(add_argument_group)
        1    0.000    0.000    0.000    0.000 __init__.py:71(search_function)
        2    0.000    0.000    0.000    0.000 argparse.py:1473(__init__)
       18    0.000    0.000    0.000    0.000 sre_parse.py:225(_class_escape)
       60    0.000    0.000    0.000    0.000 sre_parse.py:138(append)
        8    0.000    0.000    0.000    0.000 {all}
       22    0.000    0.000    0.000    0.000 sre_compile.py:354(_simple)
        1    0.000    0.000    0.000    0.000 {__import__}
      3/2    0.000    0.000    0.000    0.000 abc.py:148(__subclasscheck__)
        3    0.000    0.000    0.000    0.000 gettext.py:130(_expand_lang)
       34    0.000    0.000    0.000    0.000 argparse.py:1221(register)
       46    0.000    0.000    0.000    0.000 collections.py:277(<genexpr>)
        1    0.000    0.000    0.000    0.000 result.py:26(TestResult)
        1    0.000    0.000    0.000    0.000 hex_codec.py:8(<module>)
        4    0.000    0.000    0.000    0.000 sre_compile.py:258(_mk_bitmap)
      104    0.000    0.000    0.000    0.000 {min}
        3    0.000    0.000    0.000    0.000 result.py:14(failfast)
        1    0.000    0.000    0.000    0.000 abc.py:128(__instancecheck__)
       12    0.000    0.000    0.000    0.000 sre_parse.py:178(__init__)
       16    0.000    0.000    0.000    0.000 sre_parse.py:257(_escape)
        3    0.000    0.000    0.000    0.000 functools.py:17(update_wrapper)
       24    0.000    0.000    0.000    0.000 sre_compile.py:474(isstring)
        1    0.000    0.000    0.000    0.000 snp_sites.py:13(write_header)
        1    0.000    0.000    0.000    0.000 case.py:132(TestCase)
        7    0.000    0.000    0.000    0.000 _weakrefset.py:58(__iter__)
        3    0.000    0.000    0.000    0.000 argparse.py:1667(_add_action)
        3    0.000    0.000    0.000    0.000 locale.py:339(normalize)
       49    0.000    0.000    0.000    0.000 sre_parse.py:90(__init__)
      5/3    0.000    0.000    0.000    0.000 {issubclass}
        3    0.000    0.000    0.000    0.000 argparse.py:1495(_add_action)
       32    0.000    0.000    0.000    0.000 {method 'format' of 'str' objects}
        1    0.000    0.000    0.000    0.000 suite.py:1(<module>)
       54    0.000    0.000    0.000    0.000 sre_compile.py:24(_identityfunction)
       12    0.000    0.000    0.000    0.000 UserDict.py:58(get)
        1    0.000    0.000    0.000    0.000 bisect.py:1(<module>)
        1    0.000    0.000    0.000    0.000 posixpath.py:110(basename)
        3    0.000    0.000    0.000    0.000 argparse.py:571(_format_args)
       38    0.000    0.000    0.000    0.000 {method 'isalnum' of 'str' objects}
        3    0.000    0.000    0.000    0.000 argparse.py:1307(_add_action)
       20    0.000    0.000    0.000    0.000 {hasattr}
       32    0.000    0.000    0.000    0.000 {chr}
        8    0.000    0.000    0.000    0.000 argparse.py:95(_callable)
       31    0.000    0.000    0.000    0.000 {ord}
       22    0.000    0.000    0.000    0.000 {getattr}
        8    0.000    0.000    0.000    0.000 argparse.py:1225(_registry_get)
       22    0.000    0.000    0.000    0.000 sre_parse.py:134(__setitem__)
        8    0.000    0.000    0.000    0.000 sre_parse.py:83(closegroup)
        3    0.000    0.000    0.000    0.000 argparse.py:1422(_pop_action_class)
        1    0.000    0.000    0.000    0.000 <string>:1(<module>)
        1    0.000    0.000    0.000    0.000 pprint.py:35(<module>)
        8    0.000    0.000    0.000    0.000 sre_parse.py:72(opengroup)
       12    0.000    0.000    0.000    0.000 {_sre.compile}
        1    0.000    0.000    0.000    0.000 argparse.py:1387(_get_optional_kwargs)
        6    0.000    0.000    0.000    0.000 sre_compile.py:51(fixup)
        3    0.000    0.000    0.000    0.000 _weakrefset.py:26(__exit__)
       14    0.000    0.000    0.000    0.000 {range}
       13    0.000    0.000    0.000    0.000 {setattr}
        3    0.000    0.000    0.000    0.000 UserDict.py:18(__getitem__)
       16    0.000    0.000    0.000    0.000 {method 'add' of 'set' objects}
        1    0.000    0.000    0.000    0.000 {method 'rfind' of 'str' objects}
        2    0.000    0.000    0.000    0.000 argparse.py:1371(_get_positional_kwargs)
       11    0.000    0.000    0.000    0.000 {method 'replace' of 'str' objects}
       12    0.000    0.000    0.000    0.000 sre_parse.py:67(__init__)
       13    0.000    0.000    0.000    0.000 {method 'items' of 'dict' objects}
        3    0.000    0.000    0.000    0.000 argparse.py:1426(_get_handler)
       12    0.000    0.000    0.000    0.000 UserDict.py:70(__contains__)
        1    0.000    0.000    0.000    0.000 __init__.py:49(normalize_encoding)
        3    0.000    0.000    0.000    0.000 _weakrefset.py:20(__enter__)
        2    0.000    0.000    0.000    0.000 argparse.py:805(__init__)
        3    0.000    0.000    0.000    0.000 {method 'match' of '_sre.SRE_Pattern' objects}
        3    0.000    0.000    0.000    0.000 argparse.py:564(format)
        1    0.000    0.000    0.000    0.000 argparse.py:147(HelpFormatter)
        3    0.000    0.000    0.000    0.000 _weakrefset.py:81(add)
        9    0.000    0.000    0.000    0.000 {method 'find' of 'str' objects}
        1    0.000    0.000    0.000    0.000 StringIO.py:30(<module>)
        9    0.000    0.000    0.000    0.000 {_sre.getlower}
        9    0.000    0.000    0.000    0.000 {method 'extend' of 'list' objects}
        8    0.000    0.000    0.000    0.000 collections.py:294(<genexpr>)
        1    0.000    0.000    0.000    0.000 hex_codec.py:70(getregentry)
        1    0.000    0.000    0.000    0.000 argparse.py:1023(_SubParsersAction)
        8    0.000    0.000    0.000    0.000 {method '__contains__' of 'frozenset' objects}
        2    0.000    0.000    0.000    0.000 argparse.py:834(__call__)
        8    0.000    0.000    0.000    0.000 {method 'isdigit' of 'str' objects}
        1    0.000    0.000    0.000    0.000 argparse.py:981(__init__)
        8    0.000    0.000    0.000    0.000 {method 'remove' of 'list' objects}
        7    0.000    0.000    0.000    0.000 case.py:605(_deprecate)
        5    0.000    0.000    0.000    0.000 _weakrefset.py:68(__contains__)
        3    0.000    0.000    0.000    0.000 argparse.py:763(__init__)
        6    0.000    0.000    0.000    0.000 {max}
        6    0.000    0.000    0.000    0.000 {method 'startswith' of 'str' objects}
        1    0.000    0.000    0.000    0.000 hex_codec.py:27(hex_decode)
        2    0.000    0.000    0.000    0.000 {repr}
        1    0.000    0.000    0.000    0.000 decoder.py:304(__init__)
        1    0.000    0.000    0.000    0.000 codecs.py:77(__new__)
        1    0.000    0.000    0.000    0.000 <string>:1(Match)
        2    0.000    0.000    0.000    0.000 _weakrefset.py:36(__init__)
        3    0.000    0.000    0.000    0.000 functools.py:39(wraps)
        1    0.000    0.000    0.000    0.000 <string>:1(Mismatch)
        1    0.000    0.000    0.000    0.000 runner.py:28(TextTestResult)
        4    0.000    0.000    0.000    0.000 sre_parse.py:128(__delitem__)
        1    0.000    0.000    0.000    0.000 traceback.py:1(<module>)
        2    0.000    0.000    0.000    0.000 {locals}
        3    0.000    0.000    0.000    0.000 argparse.py:197(__init__)
        3    0.000    0.000    0.000    0.000 argparse.py:555(_metavar_formatter)
        3    0.000    0.000    0.000    0.000 {method 'update' of 'dict' objects}
        1    0.000    0.000    0.000    0.000 keyword.py:11(<module>)
        1    0.000    0.000    0.000    0.000 collections.py:25(OrderedDict)
        3    0.000    0.000    0.000    0.000 {method 'split' of 'str' objects}
        3    0.000    0.000    0.000    0.000 _weakrefset.py:52(_commit_removals)
        3    0.000    0.000    0.000    0.000 argparse.py:1435(_check_conflict)
        4    0.000    0.000    0.000    0.000 {method 'translate' of 'str' objects}
        1    0.000    0.000    0.000    0.000 argparse.py:1525(ArgumentParser)
        1    0.000    0.000    0.000    0.000 main.py:63(TestProgram)
        3    0.000    0.000    0.000    0.000 _weakrefset.py:16(__init__)
        1    0.000    0.000    0.000    0.000 runner.py:119(TextTestRunner)
        1    0.000    0.000    0.000    0.000 collections.py:356(Counter)
        4    0.000    0.000    0.000    0.000 {method 'pop' of 'dict' objects}
        3    0.000    0.000    0.000    0.000 {method 'reverse' of 'list' objects}
        3    0.000    0.000    0.000    0.000 _abcoll.py:97(__subclasshook__)
        1    0.000    0.000    0.000    0.000 fnmatch.py:11(<module>)
        3    0.000    0.000    0.000    0.000 {method 'remove' of 'set' objects}
        1    0.000    0.000    0.000    0.000 signals.py:9(_InterruptHandler)
        1    0.000    0.000    0.000    0.000 suite.py:16(BaseTestSuite)
        1    0.000    0.000    0.000    0.000 argparse.py:1167(_ActionsContainer)
        1    0.000    0.000    0.000    0.000 StringIO.py:42(StringIO)
        1    0.000    0.000    0.000    0.000 encoder.py:71(JSONEncoder)
        2    0.000    0.000    0.000    0.000 argparse.py:1113(__init__)
        2    0.000    0.000    0.000    0.000 argparse.py:2250(_check_value)
        1    0.000    0.000    0.000    0.000 weakref.py:243(__init__)
        2    0.000    0.000    0.000    0.000 argparse.py:2132(_get_nargs_pattern)
        2    0.000    0.000    0.000    0.000 {sys._getframe}
        1    0.000    0.000    0.000    0.000 loader.py:38(TestLoader)
        1    0.000    0.000    0.000    0.000 difflib.py:1672(HtmlDiff)
        1    0.000    0.000    0.000    0.000 snp_sites.py:81(TestParseFasta)
        1    0.000    0.000    0.000    0.000 difflib.py:46(SequenceMatcher)
        1    0.000    0.000    0.000    0.000 encoder.py:102(__init__)
        1    0.000    0.000    0.000    0.000 argparse.py:1505(_MutuallyExclusiveGroup)
        1    0.000    0.000    0.000    0.000 runner.py:12(_WritelnDecorator)
        1    0.000    0.000    0.000    0.000 case.py:1014(FunctionTestCase)
        1    0.000    0.000    0.000    0.000 argparse.py:1679(_get_positional_actions)
        2    0.000    0.000    0.000    0.000 {method '__subclasses__' of 'type' objects}
        1    0.000    0.000    0.000    0.000 pprint.py:81(PrettyPrinter)
        1    0.000    0.000    0.000    0.000 argparse.py:803(_StoreAction)
        1    0.000    0.000    0.000    0.000 {_struct.unpack}
        2    0.000    0.000    0.000    0.000 argparse.py:2031(_parse_optional)
        1    0.000    0.000    0.000    0.000 argparse.py:1151(__init__)
        1    0.000    0.000    0.000    0.000 suite.py:252(_ErrorHolder)
        1    0.000    0.000    0.000    0.000 argparse.py:1025(_ChoicesPseudoAction)
        1    0.000    0.000    0.000    0.000 suite.py:78(TestSuite)
        1    0.000    0.000    0.000    0.000 suite.py:299(_DebugResult)
        1    0.000    0.000    0.000    0.000 {binascii.a2b_hex}
        1    0.000    0.000    0.000    0.000 difflib.py:766(Differ)
        1    0.000    0.000    0.000    0.000 case.py:97(_AssertRaisesContext)
        1    0.000    0.000    0.000    0.000 argparse.py:112(_AttributeHolder)
        1    0.000    0.000    0.000    0.000 {method 'lstrip' of 'str' objects}
        1    0.000    0.000    0.000    0.000 argparse.py:1471(_ArgumentGroup)
        1    0.000    0.000    0.000    0.000 case.py:44(_UnexpectedSuccess)
        1    0.000    0.000    0.000    0.000 case.py:33(_ExpectedFailure)
        1    0.000    0.000    0.000    0.000 hex_codec.py:45(Codec)
        1    0.000    0.000    0.000    0.000 {method 'groups' of '_sre.SRE_Match' objects}
        1    0.000    0.000    0.000    0.000 argparse.py:1144(Namespace)
        1    0.000    0.000    0.000    0.000 argparse.py:958(_CountAction)
        1    0.000    0.000    0.000    0.000 argparse.py:895(_AppendAction)
        1    0.000    0.000    0.000    0.000 argparse.py:712(Action)
        1    0.000    0.000    0.000    0.000 hex_codec.py:62(StreamWriter)
        1    0.000    0.000    0.000    0.000 argparse.py:838(_StoreConstAction)
        1    0.000    0.000    0.000    0.000 decoder.py:274(JSONDecoder)
        1    0.000    0.000    0.000    0.000 hex_codec.py:57(IncrementalDecoder)
        1    0.000    0.000    0.000    0.000 {iter}
        1    0.000    0.000    0.000    0.000 case.py:24(SkipTest)
        1    0.000    0.000    0.000    0.000 {zip}
        1    0.000    0.000    0.000    0.000 hex_codec.py:65(StreamReader)
        1    0.000    0.000    0.000    0.000 {built-in method __new__ of type object at 0x8b7e00}
        1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}
        1    0.000    0.000    0.000    0.000 argparse.py:998(_VersionAction)
        1    0.000    0.000    0.000    0.000 argparse.py:932(_AppendConstAction)
        1    0.000    0.000    0.000    0.000 argparse.py:861(_StoreTrueAction)
        1    0.000    0.000    0.000    0.000 hex_codec.py:52(IncrementalEncoder)
        1    0.000    0.000    0.000    0.000 argparse.py:683(ArgumentError)
        1    0.000    0.000    0.000    0.000 argparse.py:638(RawTextHelpFormatter)
        1    0.000    0.000    0.000    0.000 argparse.py:979(_HelpAction)
        1    0.000    0.000    0.000    0.000 argparse.py:703(ArgumentTypeError)
        1    0.000    0.000    0.000    0.000 argparse.py:627(RawDescriptionHelpFormatter)
        1    0.000    0.000    0.000    0.000 argparse.py:649(ArgumentDefaultsHelpFormatter)
        1    0.000    0.000    0.000    0.000 argparse.py:878(_StoreFalseAction)
        1    0.000    0.000    0.000    0.000 argparse.py:1100(FileType)
        1    0.000    0.000    0.000    0.000 argparse.py:195(_Section)


