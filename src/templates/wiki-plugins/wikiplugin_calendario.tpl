<table class="calendartable" />
{section name=i loop=$quando}
{*  {if $mes[i] neq $mesant} 
    <tr>
      <td></td>
      <td>{$mes_escrito[i]}</td>
    </tr>
  {/if}   *}
  <tr>
    <td class="calendarcellquando"><div class="quando">{$quando[i]}</div><div class="hora">{$hora[i]}</div></td>
    <td class="calendarcellevento"><div class="evento">{$evento[i]}</div><div class="onde">{$onde[i]}</td>
  </tr>
  {assign var='mesant' value=$mes[i]}
{/section}
</table>
