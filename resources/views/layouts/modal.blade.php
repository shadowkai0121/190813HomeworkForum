<div id="@yield('modalID')" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                @yield('modalHeader')
            </div>

            <div class="modal-body">
                @yield('modalBody')
            </div>

            <div class="modal-footer">
                @yield('modalFooter')
            </div>
        </div>
    </div>
</div>